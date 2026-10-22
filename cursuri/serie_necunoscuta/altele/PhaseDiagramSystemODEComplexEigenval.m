close all
clear
clc
% phase plane for homogeneous linear ODE system

dx_dt = @(x,y) (0.2*x-y);
dy_dt = @(x,y) (x+0.2*y);
tic
[x, y] = meshgrid(-10:0.02:10, -10:0.02:10);

dx = dx_dt(x, y);
dy = dy_dt(x, y);

streamslice(x, y, dx, dy);

hold on

axis tight
axis equal
axis([-10 10 -10 10]);

axhoriz = plot([-10,10],[0,0],'k');
set(axhoriz,'LineWidth',1);
axvert = plot([0,0],[-10,10],'k');
set(axvert,'LineWidth',1);
toc