function [x, n] = newtons(f, fp, x0, N_max, tol) %establishes fuction and contained variables
x = zeros(1,N_max); %opens zero vector that's N_max units long
x(1) = x0; %sets the value of x(1) to be x0
n = 1; %starting value of n
res = 1e10; %sets residual value
while(n <= N_max && res > tol) %starting a loop with a two-condition boolean, both must be true to continue
    x(n+1) = x(n) - f(x(n))/fp(x(n)); %defines the next value using previously found components

    res = abs(x(n+1)-x(n)); %differece between calculated and given x
    n = n+1; %adds one to the count
end %ends while loop
x = x(1:n); %x is the vector containing the value of x at every n
if (res > tol) %opens if statement with boolean
    fprintf('Did not converge.'); %print these words if res>tol
    x = nan; n = nan; %x and n are empty
end %ends if statement

end %ends function