function [t, y] = adamsbashforth(f, y0, t0, h, T)
t = t0:h:T;
y = zeros(size(t));
    for i = 1:length(t)
        if i == 1
            y(i) = y0;
        elseif i == 2
            y(i) = y(i-1)+h*f(y(i-1));
        else 
            y(i) = y(i-1) + 1.5*h*f(y(i-1)) - 0.5*h*f(y(i-2));
        end
    end       
end
