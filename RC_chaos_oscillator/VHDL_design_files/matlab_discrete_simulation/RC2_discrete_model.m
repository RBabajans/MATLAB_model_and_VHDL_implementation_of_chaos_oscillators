%% This is a discrete model of the RC2 chaos oscillator

clear variables, close all
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
%=========================================================================%
%% Time data

tau = 1e-3; % Time step

t = 0:tau:tau*1e5-tau;

% sympref('HeavisideAtOrigin', 0); % set so that heaviside(0) = 0
%=========================================================================%
%% Difference equation of master's chaos oscillator

x = zeros(1,length(t));
y = zeros(1,length(t));
z = zeros(1,length(t));

% initial conditions
x(1) = 0;
y(1) = 0;
z(1) = 0.1;

for n = 2:1:length(t)-1
    x(n) = x(n-1)*(1-tau)   +y(n-1)*tau*(k1-1)   -z(n-1)*tau*(k1-1);
    y(n) = y(n-1)*(1+(k1-2)*tau)   -x(n-1)*tau   -z(n-1)*(k1-1)*tau;
    z(n) = z(n-1)*(1-(k1+a)*tau+b*heaviside(z(n-1)-1)*tau)   +k1*y(n-1)*tau   -b*heaviside(z(n-1)-1)*tau;

    heav_1(n) = heaviside(z(n-1)-1);
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




