function [t, y] = backward_euler2(y0, t0, h, T)
t = t0:h:T;
y = zeros(size(t));

    for i = 1:length(t)
        if i == 1
            y(i) = y0;
        else
            y(i) = y(i-1)/(1+10*h);
        end
    end
end
