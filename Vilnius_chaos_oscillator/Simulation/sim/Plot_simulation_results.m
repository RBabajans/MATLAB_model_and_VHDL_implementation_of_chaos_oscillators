%% This code compares the MATLAB and VHDL models of Vilnius chaos oscillator

clear variables, close all, format long g

%=========================================================================%
%% Parameters of the chaos oscillator

R4 = 20e3;
R3 = 10e3;
R2 = 5e3; % !!!!!!!!!!!!!!!!!!!!!!
R1 = 1e3;

L1 = 1e-3;
C1 = 1e-9;
C2 = 150e-12;

Is = 2.52e-9;
Vt = 26e-3;
ep =  C2/C1;
Vb = 3;

I0 = Vb/R4;
ro = sqrt(L1/C1);

k = R2/R3+1;

a = 0.472;%(k-1)*R1/ro;
b = ro*I0/Vt;
c = ro*Is/Vt;

ep_rev = 5.69921875;
%=========================================================================%
%=========================================================================%
%% Integer and fractional parts of the signals

% The signals are signed 8Q14, of the z signal 6Q6 are taken as 12 bit adress
% space to get heaviside memory data (approximated nonlinearity). The
% memory contains signed 8Q14 

INT_PART_signal = 8;
FRAC_PART_signal = 14;
WORD_signal = INT_PART_signal + FRAC_PART_signal;

mem_addr_BW = 12;
mem_data_BW = 22;
%=========================================================================%
%% Exponent memory

% Input signal adress space
z_in_12_bit_adress_space = (-2^(mem_addr_BW-1):2^(mem_addr_BW-1)-1)/2^(mem_addr_BW-6);


% Calculate the part that contains nonlinearity
exponent_memory_12_bit_adress_space = (b - (exp(z_in_12_bit_adress_space)-1) * c) * ep_rev .*2^(mem_data_BW-8);

% Truncate for 7-bit + sign (8 bit) integer part
exponent_memory_12_bit_adress_space = min(max(exponent_memory_12_bit_adress_space, -2^(mem_data_BW-1)),2^(mem_data_BW-1)-1);

exponent_memory_12_bit_adress_space_floored = round(exponent_memory_12_bit_adress_space); 
%=========================================================================%
%% Time data

tau = 4/1024; % Time step

t = 0:tau:tau*2e5-tau;
%=========================================================================%
%=========================================================================%
%% Difference equation of Vilnius chaos oscillator

x_sequential = zeros(1,length(t));
y_sequential = zeros(1,length(t));
z_sequential = zeros(1,length(t));

% initial conditions
x_sequential(1) = 0.125;
y_sequential(1) = 0.125;
z_sequential(1) = 0.125;

% Memory
z_memory_address = zeros(1,length(t));
z_memory_address(1) = floor(z_sequential(1)*2^(mem_addr_BW-6))+2^(mem_addr_BW-1)+1; % +1 because of MATLAB adressing


% zero all other registers
dx1_1 = zeros(1,length(t));
dx2_1 = zeros(1,length(t));

dy1_1 = zeros(1,length(t));
dy1_2 = zeros(1,length(t));
dy2_1 = zeros(1,length(t));

dz1_1 = zeros(1,length(t));
memory_out = zeros(1,length(t));
dz2_1 = zeros(1,length(t));

dx = zeros(1,length(t)); 
dy = zeros(1,length(t));
dz = zeros(1,length(t));

mul_reg_x = zeros(1,length(t));
mul_reg_y = zeros(1,length(t));
mul_reg_z = zeros(1,length(t));

for n = 2:1:length(t)

    %=====================================================================%
    % Derivatives
    %=====================================================================%

    % -- dx
    dx1_1(n) = floor(y_sequential(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    dx1_1(n) = mod(dx1_1(n)+2^(INT_PART_signal-1), 2^INT_PART_signal)-2^(INT_PART_signal-1);

    dx2_1(n) = dx1_1(n-1);


    % -- dy
    dy1_1(n) = floor(y_sequential(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal) * floor(a*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    dy1_1(n) = mod(dy1_1(n)+2^(INT_PART_signal-1), 2^INT_PART_signal)-2^(INT_PART_signal-1);

    dy1_2(n) = floor(x_sequential(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal) + floor(z_sequential(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    dy1_2(n) = mod(dy1_2(n)+2^(INT_PART_signal-1), 2^INT_PART_signal)-2^(INT_PART_signal-1);

    dy2_1(n) = dy1_1(n-1) - dy1_2(n-1);  


    % -- dz
    dz1_1(n) = floor(y_sequential(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal) * floor(ep_rev*2^FRAC_PART_signal)/(2^FRAC_PART_signal); % !!!!!!!!!!!!!!!!!!!!!!!!!!!
    dz1_1(n) = mod(dz1_1(n)+2^(INT_PART_signal-1), 2^INT_PART_signal)-2^(INT_PART_signal-1);

    % read from memory
    z_memory_address(n) = floor(z_sequential(n-1)*2^(mem_addr_BW-6))+1+2^(mem_addr_BW-1); % !!!!!!!!!!!!!!
    memory_out(n) = floor(      exponent_memory_12_bit_adress_space_floored(z_memory_address(n))       /     (2^(mem_data_BW-8))     *2^FRAC_PART_signal)/(2^FRAC_PART_signal);

    dz2_1(n) = dz1_1(n-1) + memory_out(n-1);

    %=====================================================================%
    % Multiplication by tau
    %=====================================================================%

    dx(n) = floor(dx2_1(n)*2^FRAC_PART_signal)/(2^FRAC_PART_signal) * floor(tau*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    dy(n) = floor(dy2_1(n)*2^FRAC_PART_signal)/(2^FRAC_PART_signal) * floor(tau*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    dz(n) = floor(dz2_1(n)*2^FRAC_PART_signal)/(2^FRAC_PART_signal) * floor(tau*2^FRAC_PART_signal)/(2^FRAC_PART_signal);

    mul_reg_x(n) = floor(dx(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    mul_reg_y(n) = floor(dy(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    mul_reg_z(n) = floor(dz(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal);

    %=====================================================================%
    % Sum
    %=====================================================================%
    x_sequential(n) = mul_reg_x(n-1) + floor(x_sequential(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal);  
    y_sequential(n) = mul_reg_y(n-1) + floor(y_sequential(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal); 
    z_sequential(n) = mul_reg_z(n-1) + floor(z_sequential(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    
end
%=========================================================================%

% Conver to integer

x_sequential = x_sequential * 2^FRAC_PART_signal;
y_sequential = y_sequential * 2^FRAC_PART_signal;
z_sequential = z_sequential * 2^FRAC_PART_signal;


% dx1_1 = dx1_1  * 2^FRAC_PART_signal;
% dx2_1 = dx2_1  * 2^FRAC_PART_signal;
% 
% dy1_1 = floor(dy1_1 *2^FRAC_PART_signal)/(2^FRAC_PART_signal) * 2^FRAC_PART_signal;
% dy1_2 = floor(dy1_2  *2^FRAC_PART_signal)/(2^FRAC_PART_signal) * 2^FRAC_PART_signal;
% dy2_1 = dy2_1 * 2^FRAC_PART_signal;
% 
% dz1_1 = floor(dz1_1  *2^FRAC_PART_signal)/(2^FRAC_PART_signal) * 2^FRAC_PART_signal;
% memory_out = floor(memory_out  *2^FRAC_PART_signal)/(2^FRAC_PART_signal) * 2^FRAC_PART_signal;
% dz2_1 = dz2_1 * 2^FRAC_PART_signal;
% 
% dx = floor(dx  *2^FRAC_PART_signal)/(2^FRAC_PART_signal) * 2^FRAC_PART_signal; 
% dy = floor(dy  *2^FRAC_PART_signal)/(2^FRAC_PART_signal) * 2^FRAC_PART_signal;
% dz = floor(dz  *2^FRAC_PART_signal)/(2^FRAC_PART_signal) * 2^FRAC_PART_signal;
% 
% mul_reg_x = floor(mul_reg_x  *2^FRAC_PART_signal)/(2^FRAC_PART_signal) * 2^FRAC_PART_signal;
% mul_reg_y = floor(mul_reg_y  *2^FRAC_PART_signal)/(2^FRAC_PART_signal) * 2^FRAC_PART_signal;
% mul_reg_z = floor(mul_reg_z  *2^FRAC_PART_signal)/(2^FRAC_PART_signal) * 2^FRAC_PART_signal;

% Adjust memory address for comparison
% z_memory_address = z_memory_address-1;

%=========================================================================%
%% Read VHDL simulation data


% Read .csv files with data stored as std_logic_vector
cd vunit_out\modelsim

data_x = csvread('OUTPUT_X.csv');
data_y = csvread('OUTPUT_Y.csv');
data_z = csvread('OUTPUT_Z.csv');


% data_dx1_1 = csvread('OUTPUT_dx1_1.csv');
% data_dx2_1 = csvread('OUTPUT_dx2_1.csv');
% data_dy1_1 = csvread('OUTPUT_dy1_1.csv');
% data_dy1_2 = csvread('OUTPUT_dy1_2.csv');
% data_dy2_1 = csvread('OUTPUT_dy2_1.csv');
% data_dz1_1 = floor(csvread('OUTPUT_dz1_1.csv') / (2^FRAC_PART_signal));
% data_dz2_1 = floor(csvread('OUTPUT_dz2_1.csv') / (2^FRAC_PART_signal));
% 
% data_derx = csvread('OUTPUT_derx.csv'); 
% data_dery = csvread('OUTPUT_dery.csv'); 
% data_derz = csvread('OUTPUT_derz.csv'); 
% 
% data_mulx = csvread('OUTPUT_mulx.csv');
% data_muly = csvread('OUTPUT_muly.csv');
% data_mulz = csvread('OUTPUT_mulz.csv');
% 
% data_x_plus_dx = csvread('OUTPUT_x_plus_dx.csv');
% data_y_plus_dy = csvread('OUTPUT_y_plus_dy.csv');
% data_z_plus_dz = csvread('OUTPUT_z_plus_dz.csv');

cd ..
cd ..
%=========================================================================%
%% Evaluate the difference of the two models (must be 0)

difference_x = x_sequential - data_x';
difference_y = y_sequential - data_y';
difference_z = z_sequential - data_z';

find(round(difference_x),1)
find(round(difference_y),1)
find(round(difference_z),1)

%    MATLAB           VHDL

% [dy1_1(1:10)', data_dy1_1(1:10)]
% [y_sequential(1:10)', data_y(1:10)]
% [dz1_2(1:10)', data_dz1_2(1:10)]
% [dz1_1(163:165)', data_dz1_1(163:165)]

%=========================================================================%
%% Plots

figure(1)
subplot(3,1,1)
plot(x_sequential)
grid on, grid minor
xlabel("n");
ylabel("X_{MATLAB}");
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));

subplot(3,1,2)
plot(y_sequential)
grid on, grid minor
xlabel("n");
ylabel("Y_{MATLAB}");
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));

subplot(3,1,3)
plot(z_sequential)
grid on, grid minor
xlabel("n");
ylabel("Z_{MATLAB}");
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));



figure(2)
subplot(3,1,1)
plot(data_x)
grid on, grid minor
xlabel("n");
ylabel("X_{VHDL}");
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));

subplot(3,1,2)
plot(data_y)
grid on, grid minor
grid on, grid minor
xlabel("n");
ylabel("Y_{VHDL}");
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));

subplot(3,1,3)
plot(data_z)
grid on, grid minor
xlabel("n");
ylabel("Z_{VHDL}");
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));



figure(3)
subplot(1,3,1)
plot(x_sequential,y_sequential)
grid on, grid minor
xlabel("X_{MATLAB}");
ylabel("Y_{MATLAB}");
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));

subplot(1,3,2)
plot(y_sequential,z_sequential)
grid on, grid minor
xlabel("Y_{MATLAB}");
ylabel("Z_{MATLAB}");
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));

subplot(1,3,3)
plot(x_sequential,z_sequential)
grid on, grid minor
xlabel("X_{MATLAB}");
ylabel("Z_{MATLAB}");
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));


figure(4)
subplot(1,3,1)
plot(data_x,data_y)
grid on, grid minor
xlabel("X_{VHDL}");
ylabel("Y_{VHDL}");
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));

subplot(1,3,2)
plot(data_y,data_z)
grid on, grid minor
xlabel("Y_{VHDL}");
ylabel("Z_{VHDL}");
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));

subplot(1,3,3)
plot(data_x,data_z)
grid on, grid minor
xlabel("X_{VHDL}");
ylabel("Z_{VHDL}");
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));


figure(5)
hold on
plot(x_sequential)
plot(data_x)
grid on, grid minor
xlabel("n");
ylabel("X");
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));
legend("MATLAB","VHDL")


figure(6)
hold on
plot(y_sequential)
plot(data_y)
grid on, grid minor
xlabel("n");
ylabel("Y");
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));
legend("MATLAB","VHDL")


figure(7)
hold on
plot(z_sequential)
plot(data_z)
grid on, grid minor
xlabel("n");
ylabel("Z");
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));
legend("MATLAB","VHDL")
