k = 4;
m = 9;
w0 = 2/3;
F0 = 2;
g = @(t) F0*cos(w0*t);
c = 0;
f = @(t,y) [0 1;-k/m -c/m]*y+[0;g(t)];
y0 = [0;0];
t0 = 0;
h = 0.05;
T = 300;

[t,y] = systems_RK4(f, y0, t0, h, T);

plot(t,y(1,:))
