f = @(x) (x.^3) - (x.^2);
fp = @(x) 3*(x.^2) - 2*x;
x0=3;
tol = 10^-6;
N_max = 100;

[x,n]=newtons(f,fp,x0,N_max,tol)


%error

errorx = zeros(1,n-1);
for i = 1:n-1
    errorx(i) = abs(1-x(i));
end
 
errory = zeros(1,n-1);
for i = 1:n-1
    errory(i) = abs(1-x(i+1));
end 

y = log(errory);
x = log(errorx);
plot(x,y)
title('log of error n vs. log of error n-1')
xlabel('log of error n-1')
ylabel('log of error')

%slope say error converges at quadratic rate

    