clc
clear all

[t,s]=meshgrid(0:pi/10:2*pi,  0:0.1:6);

% a cylinder
x=cos(t);
y=sin(t);
z=s;

surf(x,y,z,'EdgeColor','none')
%mesh(x,y,z)
axis([-2 2 -2 2 0 7])
