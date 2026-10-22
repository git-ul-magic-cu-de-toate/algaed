dx_dt = @(x,y) (1.6*x-0.3*y);
dy_dt = @(x,y) (-0.8*x+1.4*y);

[x, y] = meshgrid(-2:0.02:2, -2:0.02:2);

dx = dx_dt(x, y);
dy = dy_dt(x, y);

streamslice(x, y, dx, dy);

hold on

axis tight
axis equal
axis([-2 2 -2 2]);

v1 = plot([-2,2],[-4,4],'-r');
set(v1,'LineWidth',1);
v2 = plot([-2,2],[8/3,-8/3],'-r');
set(v2,'LineWidth',1);

axhoriz = plot([-2,2],[0,0],'k');
set(axhoriz,'LineWidth',1);
axvert = plot([0,0],[-2,2],'k');
set(axvert,'LineWidth',1);
