clc
clear all


[t,s]=meshgrid(0:pi/100:2*pi,  0:pi/100: 2*pi);


a = 0.5;
b = 3;
% given surface
x= (b + a*cos(s)).*cos(t);
y= (b + a*cos(s)).*sin(t);
z= a *sin(s);

%surf(x,y,z,'EdgeColor','none')
mesh(x,y,z, 'linewidth',4)
%axis([-2 2 -2 2 0 7])