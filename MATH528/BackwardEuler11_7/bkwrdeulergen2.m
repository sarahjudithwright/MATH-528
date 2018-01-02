f = @(t,y) y*cos(y);
y0 = 0.01;
h = 0.01;
T = 10;
dfdy = @(t,y) cos(y)-y*sin(y);

[t, y] = backward_eulergen(f, y0, h, T, dfdy);

plot(t,y)