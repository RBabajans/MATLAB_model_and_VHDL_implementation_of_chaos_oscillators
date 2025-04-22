%% This code compares the MATLAB and VHDL models of RC chaos oscillator

clear variables, close all, format long g

sympref('HeavisideAtOrigin', 0);
%=========================================================================%
%% Parameters of the chaos oscillator

a = 10;
b = 14.102564102564102;

k1 = 5.5; 
k3 = 4.5; % k1 -1 
k4 = 3.5; % k1 - 2
k5 = 15.5; % k1 + a
%=========================================================================%
%% Time data

tau = 1/1024; % Time step

t = 0:tau:tau*2e5-tau;
%=========================================================================%
%=========================================================================%
%% Integer and fractional parts of the signals

% The signals are signed 8Q14, of the z signal 6Q6 are taken as 12 bit adress
% space to get heaviside memory data (approximated nonlinearity). The
% memory contains signed 8Q14 


INT_PART_signal = 8;
FRAC_PART_signal = 14;

mem_addr_BW = 12;
mem_data_BW = 22;


TRUNCATION = 8; % bits for the memory signed integer part
TRUNCATION_Value = 2^(TRUNCATION - 1); 

% 6Q6 taken from 8Q14. This here is to transform the z_in to adress
%=========================================================================%
%% Heaviside memory

% Input signal adress space
z_in_12_bit_adress_space = (-2^(mem_addr_BW-1):2^(mem_addr_BW-1)-1)/2^(mem_addr_BW-6);

% Calculate the part that contains nonlinearity
heaviside_memory_12_bit_adress_space = (-z_in_12_bit_adress_space * k5 + b * (z_in_12_bit_adress_space-1) .* heaviside(z_in_12_bit_adress_space-1)) .*2^(mem_data_BW-8);

% Truncate for 7-bit + sign (8 bit) integer part
heaviside_memory_12_bit_adress_space = min(max(heaviside_memory_12_bit_adress_space, -2^(mem_data_BW-1)),2^(mem_data_BW-1)-1);

heaviside_memory_12_bit_adress_space_floored = round(heaviside_memory_12_bit_adress_space);
%=========================================================================%
%% Difference equation of RC2 chaos oscillator

x_sequential = zeros(1,length(t));
y_sequential = zeros(1,length(t));
z_sequential = zeros(1,length(t));

% initial conditions
x_sequential(1) = 0.125;
y_sequential(1) = 0.125;
z_sequential(1) = 0.125;

% Memory
z_memory_adress = zeros(1,length(t));
z_memory_adress(1) = floor(z_sequential(1)*2^(mem_addr_BW-6))+1+2^(mem_addr_BW-1);

% zero all other registers
dx1_1 = zeros(1,length(t));
dx1_2 = zeros(1,length(t));
dx1_3 = zeros(1,length(t));
dx2_1 = zeros(1,length(t));
dx2_2 = zeros(1,length(t));
dx2_3 = zeros(1,length(t));
dx3_1 = zeros(1,length(t));
dx4_1 = zeros(1,length(t));

dy1_1 = zeros(1,length(t));
dy1_2 = zeros(1,length(t));
dy1_3 = zeros(1,length(t));
dy2_1 = zeros(1,length(t));
dy2_2 = zeros(1,length(t));
dy2_3 = zeros(1,length(t));
dy3_1 = zeros(1,length(t));
dy4_1 = zeros(1,length(t));

dz1_1 = zeros(1,length(t));
memory_out = zeros(1,length(t));
dz1_3 = zeros(1,length(t));
dz2_1 = zeros(1,length(t));
dz3_1 = zeros(1,length(t));
dz4_1 = zeros(1,length(t));

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

    % disp(sprintf('%3d   %4.4f   %4.4f   %4.4f', [n x_sequential(n-1) y_sequential(n-1) z_sequential(n-1)]))

    % -- dx
    dx1_1(n) = floor(y_sequential(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal)*floor(k3*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    dx1_1(n) = mod(dx1_1(n)+2^(INT_PART_signal-1), 2^INT_PART_signal)-2^(INT_PART_signal-1);

    dx1_2(n) = floor(z_sequential(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal)*floor(k3*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    dx1_2(n) = mod(dx1_2(n)+2^(INT_PART_signal-1), 2^INT_PART_signal)-2^(INT_PART_signal-1);

    dx1_3(n) = floor(x_sequential(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    dx1_3(n) = mod(dx1_3(n)+2^(INT_PART_signal-1), 2^INT_PART_signal)-2^(INT_PART_signal-1);

    dx2_1(n) = dx1_1(n-1) - dx1_2(n-1);
    dx2_2(n) = dx1_3(n-1); 
    
    dx3_1(n) = dx2_1(n-1) - dx2_2(n-1);

    dx4_1(n) = floor(dx3_1(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal); % flooring
    dx4_1(n) = mod(dx4_1(n)+2^(INT_PART_signal-1), 2^INT_PART_signal)-2^(INT_PART_signal-1);

    % -- dy
    dy1_1(n) = floor(y_sequential(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal)*floor(k4*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    dy1_1(n) = mod(dy1_1(n)+2^(INT_PART_signal-1), 2^INT_PART_signal)-2^(INT_PART_signal-1);

    dy1_2(n) = floor(z_sequential(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal)*floor(k3*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    dy1_2(n) = mod(dy1_2(n)+2^(INT_PART_signal-1), 2^INT_PART_signal)-2^(INT_PART_signal-1);

    dy1_3(n) = floor(x_sequential(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    dy1_3(n) = mod(dy1_3(n)+2^(INT_PART_signal-1), 2^INT_PART_signal)-2^(INT_PART_signal-1);

    dy2_1(n) = dy1_1(n-1) - dy1_2(n-1);
    dy2_2(n) = dy1_3(n-1); 
    
    dy3_1(n) = dy2_1(n-1) - dy2_2(n-1);

    dy4_1(n) = floor(dy3_1(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal); % flooring
    dy4_1(n) = mod(dy4_1(n)+2^(INT_PART_signal-1), 2^INT_PART_signal)-2^(INT_PART_signal-1);

    % -- dz
    dz1_1(n) = floor(y_sequential(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal) * floor(k1*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    dz1_1(n) = mod(dz1_1(n)+2^(INT_PART_signal-1), 2^INT_PART_signal)-2^(INT_PART_signal-1);

    % read from memory
    z_memory_adress(n) = floor(z_sequential(n-1)*2^(mem_addr_BW-6))+1+2^(mem_addr_BW-1); % !!!!!!!!!!!!!!
    memory_out(n) = heaviside_memory_12_bit_adress_space_floored(z_memory_adress(n))       /     (2^(mem_data_BW-8));

    dz2_1(n) = dz1_1(n-1) + memory_out(n-1);

    dz3_1(n) = dz2_1(n-1);

    dz4_1(n) = floor(dz3_1(n-1)*2^FRAC_PART_signal)/(2^FRAC_PART_signal); % flooring
    dz4_1(n) = mod(dz4_1(n)+2^(INT_PART_signal-1), 2^INT_PART_signal)-2^(INT_PART_signal-1);
    
    %=====================================================================%
    % Multiplication by tau
    %=====================================================================%

    dx(n) = dx4_1(n) * floor(tau*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    dy(n) = dy4_1(n) * floor(tau*2^FRAC_PART_signal)/(2^FRAC_PART_signal);
    dz(n) = dz4_1(n) * floor(tau*2^FRAC_PART_signal)/(2^FRAC_PART_signal);

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
%% Read VHDL simulation results

cd vunit_out\modelsim

data_x = csvread('OUTPUT_X.csv');
data_y = csvread('OUTPUT_Y.csv');
data_z = csvread('OUTPUT_Z.csv');

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
