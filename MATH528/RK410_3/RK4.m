function [t, y] = RK4(f, y0, t0, h, T)
t = t0:h:T;
y = zeros(size(t));
    for i = 1:length(t)
        if i == 1
            y(i) = y0;
        else 
            k1 = h*f(t(i-1), y(i-1));
            k2 = h*f(t(i-1) + 0.5*h, y(i-1) + 0.5*k1);
            k3 = h*f(t(i-1) + 0.5*h, y(i-1) + 0.5*k2);
            k4 = h*f(t(i-1)+h, y(i-1) + k3);
            y(i) = y(i-1)+(1/6)*(k1+2*k2+2*k3+k4);
        end
    end       
end
