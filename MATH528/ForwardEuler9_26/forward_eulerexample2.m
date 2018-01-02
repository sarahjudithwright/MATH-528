ha = [0.05; 0.2; 0.21];
    
for i = 1:length(ha)
f = @(y) -10.*y;
t0 = 0;
y0 = 1;
h = ha(i);
T = 3;

[t,y] = forward_euler(f, y0, t0, h, T);
  
hold on
%exact solution
ta = linspace(0,T,10000);  %divide 0-3 into 10000 segments
ya = exp(-10.*ta); %exact solution
plot(ta,ya)
%our solution
plot(t,y)
title(['euler approximation and exact solution']);
hold off
end