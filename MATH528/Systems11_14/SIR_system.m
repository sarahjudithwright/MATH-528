a = 0.7;
b = 0.3;
f = @(t,y) [-a*y(1)*y(2)/(y(1)+y(2)+y(3));a*y(1)*y(2)/(y(1)+y(2)+y(3))-b*y(2);b*y(2)];
y0 = [1000;500;300];
t0 = 0;
h = 0.05;
T = 100;

[t, y] = systems_euler(f, y0, t0, h, T);

plot(t,y)
legend('Susceptible Population','Infected Population','Recovered Population');