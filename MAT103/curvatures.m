clc
clear all

syms t
x = 3*cos(t); y = 3*sin(t); z = t;

r = [x y z];

rp = diff(r,t);
rpp = diff(r,t,2);
k = norm(cross(rp,rpp))./norm(rp).^3;
T = rp./norm(rp);
N = diff(T,t)./norm(diff(T,t));
B = cross(T,N);

    
s = linspace(0,4*pi,100);
xs = subs(x,t,s);
ys = subs(y,t,s);
zs = subs(z,t,s);

plot3(xs,ys,zs, 'linewidth',2)
%axis([-3 3 0 9 -1 1])
hold on

% lets plot the osculating circles
s = 3*pi/2;
p = double(subs(r,t,s))  % point on the curve
Tp = double(subs(T,t,s));
Np = double(subs(N,t,s))
Bp = double(subs(B,t,s));

quiver3(p(1),p(2),p(3),Tp(1),Tp(2),Tp(3),0,'linewidth',2,'color','m');
quiver3(p(1),p(2),p(3),Np(1),Np(2),Np(3),0,'linewidth',2,'color','r');
quiver3(p(1),p(2),p(3),Bp(1),Bp(2),Bp(3),0,'linewidth',2,'color','k');

kp = double(subs(k,t,s))
cp = p + (1/kp)*Np

t = linspace(0,2*pi,100);
x = (1/kp)*cos(t);
y = (1/kp)*sin(t);
z  = zeros(size(x));

A = inv([Np' Tp' Bp']);
xyz = [x;y;z];
xyz = A*xyz;
x = xyz(1,:);
y = xyz(2,:);
z = xyz(3,:);

%osculating cirlcle
plot3(x,y,z,'--','linewidth',2)
view(0,90)
















