f = @(t,y) -y.^2;
y0 = 1;
t0 = 0;
h = 0.01;
T = 3;

[t,y] = RK4(f, y0, t0, h, T);

hold on
%exact solution
ta = linspace(0,T,10000);  %divide 0-3 into 10000 segments
ya = 1./(1+ta); %exact solution
plot(ta,ya)
%our solution
plot(t,y)
title(['RK4 approximation and exact solution'])
legend('exact solution', 'RK4 solution')
hold off
