f = @(x) sin(x);
a = 1
b = 4
tol = 1e-12
N_max = 100
[c,n] = bisection(f, a, b, tol, N_max)

%error

error = zeros(1,n);
for i = 1:n %n is 1 to 42 in this case
    error(i) = abs(pi-c(i));
end
error

y = log(error);
x = [1:42];
plot(x,y)
title('log of error vs. iteration number')
xlabel('iteration number')
ylabel('log of error')

    