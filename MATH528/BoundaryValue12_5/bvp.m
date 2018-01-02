%BVP: y'' + lambda*x = 0
%BCs: y(0) = 1, y(pi) = 1 
clear
c = 10:10:100;
error = zeros(1,length(c));

for j = 1:length(c)
    n = c(j);
    h = pi/n;
    k = 1:n+1;
    a = zeros(n-1);
    b = zeros(n-1,1);
    alpha = 1;
    beta = alpha;
    b(1,1) = -alpha/h^2;
    b(end,1) = -beta/h^2;
    lambda = 4;
    for i = 1:n-1
        if i == n-1
            a(i,i) = -2/h^2 + lambda;
        else
            a(i,i) = -2/h^2 + lambda;
            a(i+1,i) = 1/h^2;
            a(i,i+1) = 1/h^2;
        end
    end
y = linsolve(a,b);
ynew = [1;y;1];
error(j) = h*sum(abs(cos(2*(k-1)*h)-ynew(k)')); 
end

d = log(pi./c);
e = log(error);
plot(d,e)