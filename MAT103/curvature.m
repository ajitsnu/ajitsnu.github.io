clc
clear all


%t = linspace(0,4*pi,1000);
syms 'x(t)'
syms y(t)
syms z(t)

% curve
x(t) = 2*cos(t);
y(t) = sin(t);
z(t) = t;
t = linspace(0,4*pi,1000);
plot3(x(t),y(t),z(t))

