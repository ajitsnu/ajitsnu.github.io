clc
clear all

[x,y,z]=meshgrid(-3:0.5:3, -3:0.5:3,-3:0.5:3);
quiver3(x,y,z,-y,x,z)
