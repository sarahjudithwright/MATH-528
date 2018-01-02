f = @(t,y) -10.*y;
t0 = 0;
y0 = 1;
h1 = 0.05;
T = 3;

[t1,y1] = RK4(f, y0, t0, h1, T);

f = @(t,y) -10.*y;
t0 = 0;
y0 = 1;
h2 = 0.05;
T = 3;

[t2,y2] = RK4(f, y0, t0, h2, T);

f = @(t,y) -10.*y;
t0 = 0;
y0 = 1;
h3 = 0.2;
T = 3;

[t3,y3] = RK4(f, y0, t0, h3, T);

hold on
%exact solution
ta = linspace(0,T,10000);  %divide 0-3 into 10000 segments
ya = exp(-10.*ta); %exact solution
plot(ta, ya)
plot(t1, y1)
plot(t2, y2)
plot(t3, y3)
title(['RK4 and exact solution']);
legend('exact solution','h=0.05','h=0.1','h=0.2')
hold off