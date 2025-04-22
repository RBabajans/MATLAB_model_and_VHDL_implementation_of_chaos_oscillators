%% This is a discrete model of the RC2 chaos oscillator

clear variables, close all, format long
%=========================================================================%
%% Parameters of the chaos oscillator

R = 11e3; % R=R1=R2=(R3+R4)
R3 = 9.1e3;
R4 = 2e3;
R6 = 1.1e3;
R7 = 2.7e3;
R8 = 780;

U0 = 0.7;

k1 = R3/R4+1;
k2 = R7/R8+1;
Uprim = U0/(k2-1);

a=R/R6;
b=R/R8;

k3 = k1-1;
k4 = k1-2;
k5 = k1+a;
%=========================================================================%
%% Time data

tau = 1e-3; % Time step

t = 0:tau:1000000*tau-tau;

% sympref('HeavisideAtOrigin', 0); % set so that heaviside(0) = 0
%=========================================================================%
INT_PART = 8;
FRAC_PART = 16;
%=========================================================================%
%% Difference equation of master's chaos oscillator

x = zeros(1,length(t));
y = zeros(1,length(t));
z = zeros(1,length(t));

% initial conditions
x(1) = 0;
y(1) = 0;
z(1) = 0.1;

% zero all other registers
dx1_1 = zeros(1,length(t));
dx1_2 = zeros(1,length(t));
dx1_3 = zeros(1,length(t));
dx2_1 = zeros(1,length(t));
dx2_2 = zeros(1,length(t));
dx2_3 = zeros(1,length(t));
dx3_1 = zeros(1,length(t));
dx4_1 = zeros(1,length(t));
dx5_1 = zeros(1,length(t));

dy1_1 = zeros(1,length(t));
dy1_2 = zeros(1,length(t));
dy1_3 = zeros(1,length(t));
dy2_1 = zeros(1,length(t));
dy2_2 = zeros(1,length(t));
dy2_3 = zeros(1,length(t));
dy3_1 = zeros(1,length(t));
dy4_1 = zeros(1,length(t));
dy5_1 = zeros(1,length(t));

dz1_1 = zeros(1,length(t));
dz1_2 = zeros(1,length(t));
dz1_3 = zeros(1,length(t));
dz2_1 = zeros(1,length(t));
dz2_2 = zeros(1,length(t));
dz2_3 = zeros(1,length(t));
dz3_1 = zeros(1,length(t));
dz3_2 = zeros(1,length(t));
dz4_1 = zeros(1,length(t));
dz5_1 = zeros(1,length(t));

dx = zeros(1,length(t)); 
dy = zeros(1,length(t));
dz = zeros(1,length(t));

mul_reg_x = zeros(1,length(t));
mul_reg_y = zeros(1,length(t));
mul_reg_z = zeros(1,length(t));

var_1_x = zeros(1,length(t));
var_2_x = zeros(1,length(t));
var_3_x = zeros(1,length(t));
var_4_x = zeros(1,length(t));
var_5_x = zeros(1,length(t));
var_6_x = zeros(1,length(t));

var_1_y = zeros(1,length(t));
var_2_y = zeros(1,length(t));
var_3_y = zeros(1,length(t));
var_4_y = zeros(1,length(t));
var_5_y = zeros(1,length(t));
var_6_y = zeros(1,length(t));

var_1_z = zeros(1,length(t));
var_2_z = zeros(1,length(t));
var_3_z = zeros(1,length(t));
var_4_z = zeros(1,length(t));
var_5_z = zeros(1,length(t));
var_6_z = zeros(1,length(t));

for n = 2:1:length(t)-1

    %=====================================================================%
    % Derivatives
    %=====================================================================%

    % -- dx
    dx1_1(n) = y(n-1)*k3;
    dx1_2(n) = z(n-1)*k3;
    dx1_3(n) = x(n-1);

    dx2_1(n) = dx1_1(n-1) - dx1_2(n-1);
    dx2_2(n) = dx1_3(n-1); 
    
    dx3_1(n) = dx2_1(n-1) - dx2_2(n-1);

    dx4_1(n) = floor(dx3_1(n-1)*2^FRAC_PART)/(2^FRAC_PART); % rounding

    dx5_1(n) = dx4_1(n-1);

    % -- dy
    dy1_1(n) = y(n-1)*k4;
    dy1_2(n) = z(n-1)*k3;
    dy1_3(n) = x(n-1);

    dy2_1(n) = dy1_1(n-1) - dy1_2(n-1);
    dy2_2(n) = dy1_3(n-1); 
    
    dy3_1(n) = dy2_1(n-1) - dy2_2(n-1);

    dy4_1(n) = floor(dy3_1(n-1)*2^FRAC_PART)/(2^FRAC_PART); % rounding

    dy5_1(n) = dy4_1(n-1);  

    % -- dz
    dz1_1(n) = y(n-1) * k1;
    dz1_2(n) = z(n-1) * k5;
    dz1_3(n) = z(n-1) - 1;

    if dz1_3(n-1) < 0
        dz2_1(n) = 0; 
    else
        dz2_1(n) = b;
    end

    dz2_2(n) = dz1_1(n-1) - dz1_2(n-1);
    dz2_3(n) = dz1_3(n-1); 

    dz3_1(n) = dz2_1(n-1) * dz2_3(n-1);
    dz3_2(n) = dz2_2(n-1);

    dz4_1(n) = dz3_1(n-1) + dz3_2(n-1);

    dz5_1(n) = floor(dz4_1(n-1)*2^FRAC_PART)/(2^FRAC_PART); % rounding

    %=====================================================================%
    % Multiplication by tau
    %=====================================================================%
    dx(n) = dx5_1(n) * tau;
    dy(n) = dy5_1(n) * tau;
    dz(n) = dz5_1(n) * tau;

    mul_reg_x(n) = dx(n-1);
    mul_reg_y(n) = dy(n-1);
    mul_reg_z(n) = dz(n-1);

    %=====================================================================%
    % Delay line for sum
    %=====================================================================%
    var_1_x(n) = x(n-1);
    var_2_x(n) = var_1_x(n-1);
    var_3_x(n) = var_2_x(n-1);
    var_4_x(n) = var_3_x(n-1);
    var_5_x(n) = var_4_x(n-1);
    var_6_x(n) = var_5_x(n-1);

    var_1_y(n) = y(n-1);
    var_2_y(n) = var_1_y(n-1);
    var_3_y(n) = var_2_y(n-1);
    var_4_y(n) = var_3_y(n-1);
    var_5_y(n) = var_4_y(n-1);
    var_6_y(n) = var_5_y(n-1);

    var_1_z(n) = z(n-1);
    var_2_z(n) = var_1_z(n-1);
    var_3_z(n) = var_2_z(n-1);
    var_4_z(n) = var_3_z(n-1);
    var_5_z(n) = var_4_z(n-1);
    var_6_z(n) = var_5_z(n-1);

    %=====================================================================%
    % Sum
    %=====================================================================%
    
    x(n) = mul_reg_x(n-1) + x(n-1);  
    y(n) = mul_reg_y(n-1) + y(n-1); 
    z(n) = mul_reg_z(n-1) + z(n-1);
    

end
%=========================================================================%
%=========================================================================%

%% Plots

figure(1)
plot(x,y)
grid on, grid minor
xlabel("X")
ylabel("Y")

figure(2)
plot(y,z)
grid on, grid minor
xlabel("Y")
ylabel("Z")

figure(3)
plot(x,z)
grid on, grid minor
xlabel("X")
ylabel("Z")


% figure(4)
% plot(heav_1)


figure(5)
hold on
plot(x)
plot(y)
plot(z)




