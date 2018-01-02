function [t, y] = backward_euler1(y0, t0, h, T)
t = t0:h:T;
y = zeros(size(t));

    for i = 1:length(t)
        if i == 1
            y(i) = y0;
        else
            y(i) = (y(i-1)+2*h+h*exp(-4*t(i-1)))/(1+2*h);  
        end
    end
end
