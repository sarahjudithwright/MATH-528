f = @(t,y) -y^2;
y0 = 1;
h = 0.01;
T = 2;
dfdy = @(t,y) -2*y;

[t, y] = backward_eulergen(f, y0, h, T, dfdy);