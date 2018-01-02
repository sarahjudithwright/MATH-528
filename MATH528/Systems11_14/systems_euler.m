%forward euler
function [t, y] = systems_euler(f, y0, t0, h, T)
t = t0:h:T;
y = zeros(length(y0), T/h);
    for i = 1:length(t)
        if i == 1
            y(:,i) = y0;
        else 
            y(:,i) = y(:, i-1)+h.*f(t(i-1),y(:, i-1));
        end
    end       
end