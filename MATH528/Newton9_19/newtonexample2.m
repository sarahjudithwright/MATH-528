f = @(x) 2*x-2+4*x.^3; %first derivative of distance function
fp = @(x) 2+12*x.^2; %second derivative
x0 = 1; %reasonable guess
tol = 10e-6; %precision of value
N_max = 100 %max itterations
[x,n] = newtons(f,fp,x0,N_max,tol)

%value this spits out is 0.5898

