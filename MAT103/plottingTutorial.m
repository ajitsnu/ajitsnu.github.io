clc
clear all

[x,y]=meshgrid(-3:0.2:3, -3:0.2:3);
quiver(x,y,-x,-y)
