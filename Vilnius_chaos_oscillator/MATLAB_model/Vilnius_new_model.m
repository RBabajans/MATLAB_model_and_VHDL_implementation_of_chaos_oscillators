%% This is a discrete model of the Vilnius chaos oscillator

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

t = 0:tau:tau*1e6-tau;
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
%% Transform memory data to hex and binary

for n = 1:length(exponent_memory_12_bit_adress_space_floored)
    % Step 1: Scale the number to an integer
    scaled_num = round(exponent_memory_12_bit_adress_space_floored(n)); % Scale by 2^14

    % Step 2: Handle signed representation (2's complement for negative numbers)
    if scaled_num < 0
        scaled_num = 2^mem_data_BW + scaled_num; % Convert to 2's complement
    end

    % Step 3: Convert to binary string
    binary_representations{n} = dec2bin(scaled_num, mem_data_BW); % Pad to total_bits
    hex_representations{n} = dec2hex(scaled_num);

end

%=========================================================================%
%% Write to file Hex values

fileID = fopen('Exponent_memory_Hex.txt','w');
formatSpec = 'x"%s",\n';

fprintf(fileID,formatSpec,hex_representations{:});

fclose(fileID);

%=========================================================================%
%% Write to file binary values

fileID = fopen('Exponent_memory_Bin.txt','w');
formatSpec = '"%s",\n';

fprintf(fileID,formatSpec,binary_representations{:});

fclose(fileID);
%=========================================================================%
%=========================================================================%
%% Plots


figure(1)
plot(x_sequential)

figure(2)
plot(y_sequential)

figure(3)
plot(z_sequential)



figure(4)
plot(x_sequential,y_sequential)

figure(5)
plot(x_sequential,z_sequential)

figure(6)
plot(y_sequential,z_sequential)


figure(7)
plot(z_in_12_bit_adress_space,exponent_memory_12_bit_adress_space_floored / 2^(mem_data_BW-8),'LineWidth',2)
grid on, grid minor
xlabel("z_n (12-bit adress space)");
ylabel("Memory data");
set(gca, 'YLim', [-140, 40], 'YTick', -140:20:40);
set(gca, 'XLim', [-33, 33], 'XTick', -32:4:32);
xticklabels(strrep(xticklabels,'-','−'));
yticklabels(strrep(yticklabels,'-','−'));


