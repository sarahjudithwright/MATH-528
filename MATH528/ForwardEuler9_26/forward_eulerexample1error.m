ha = 0.001:0.0005:0.1;
error = zeros(1,length(ha));
for i = 1:length(ha)
f = @(y) -y.^2;
y0 = 1;
t0 = 0;
h = ha(i);
T = 3;

[t,y] = forward_euler(f, y0, t0, ha(i), T);

%exact solution
ta = linspace(0,T,10000);  %divide 0-3 into 10000 segments
ya = 1./(1+ta); %exact solution

error(i) = abs(y(T)-ya(T));
end

plot(log(ha), log(error))
title(['convergence graph, slope is 1ish'])