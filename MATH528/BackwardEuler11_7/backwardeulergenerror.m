ha = 0.001:0.0005:0.1;
error = zeros(1,length(ha));
for i = 1:length(ha)
f = @(t,y) -y.^2;
y0 = 1;
h = ha(i);
T = 2;
dfdy = @(t,y) -2*y;

[t,y] = backward_eulergen(f, y0, h, T, dfdy);

%exact solution
ta = linspace(0,T,10000);  %divide 0-3 into 10000 segments
ya = 1./(1+ta); %exact solution

error(i) = abs(y(T)-ya(T));
end

plot(log(ha), log(error))
title(['log error vs log step size'])