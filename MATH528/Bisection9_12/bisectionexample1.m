f = @(x) x^2-1;
a = 0
b = 3
tol = 1e-12
N_max = 100
[c,n] = bisection(f, a, b, tol, N_max)