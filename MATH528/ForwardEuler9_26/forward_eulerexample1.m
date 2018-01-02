f = @(y) -y.^2;
y0 = 1;
t0 = 0;
h = 0.1;
T = 3;

[t,y] = forward_euler(f, y0, t0, h, T);

hold on
%exact solution
ta = linspace(0,T,10000);  %divide 0-3 into 10000 segments
ya = 1./(1+ta); %exact solution
plot(ta,ya)
%our solution
plot(t,y)
title(['euler approximation and exact solution'])
hold off
