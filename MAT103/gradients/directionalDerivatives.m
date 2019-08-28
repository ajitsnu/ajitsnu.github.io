clc
clear all

% function and its gradient
f = @(x,y)(x.^2 +y.^3);
fx = @(x,y)(2*x);
fy = @(x,y)(3*y.^2);

% point of evaluation of gradient (a,b)
a = 2; b = 2;

% in the direction v = (v1,v2)
v1 = 1; v2 = 2;

% plot surface
h = 2;
[x,y] = meshgrid(a-h:0.1:a+h,a-h:0.1:a+h);
z= f(x,y);
%surf(x,y,z, 'facealpha',0.5, 'edgealpha',0 )
surf(x,y,z,'edgecolor','interp' )
grid off
axis([a-h a+h a-h a+h min(min(z)) max(max(z)) ])
xlabel('x'); ylabel('y'); zlabel('f');
hold on

% plot xy plane
[x,y] = meshgrid(a-h:1:a+h,a-h:1:a+h);
mesh(x,y,zeros(size(x)), 'edgecolor','k', 'facealpha', 0.8,'edgealpha',0.5)


% plot tangent plane
L = @(x,y)(f(a,b) + fx(a,b)*(x-a) + fy(a,b)*(y-b));
%surf(x,y,L(x,y));

% mark point (a,b)
plot3(a,b,0,'ro','linewidth',2);
plot3(a,b,f(a,b),'ko','linewidth',2)

% line in the direcition of v
t = linspace(-5,5,500);
xt = a + v1*t;
yt = b + v2*t;
zh = zeros(size(xt));
zf = f(xt,yt);
zl = L(xt,yt);
zhh = f(a,b)*ones(size(xt));
plot3(xt,yt,zh,'r','linewidth',2)
plot3(xt,yt,zf,'k','linewidth',2)
plot3(xt,yt,zl,'b','linewidth',2)
plot3(xt,yt,zhh,'--','linewidth',2)

hold off



