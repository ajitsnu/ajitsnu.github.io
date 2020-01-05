clc
clear all

[r,t] = meshgrid(0:0.01:1,0:pi/20:2*pi);
x = r.*cos(t);
y = r.*sin(t);
z = x.^2 + y.^2;


surf(x,y,z)