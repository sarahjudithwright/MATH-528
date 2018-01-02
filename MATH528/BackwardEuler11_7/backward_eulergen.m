function [t, y] = backward_eulergen(f, y0, h, T, dfdy)
t = 0:h:T;
y = zeros(size(t));

    for i = 1:length(t)
        if i == 1
            y(i) = y0;
        else
            g = @(x) x - h*f(t(i), x)-y(i-1);
            gp = @(x) 1 - h*dfdy(t(i), x);
            x0=y(i-1); %this is where you guess what x0 is
            N_max = 100;
            tol = 10e-6;
            [x,~] = newtons(g, gp, x0, N_max, tol);
            y(i) = x(end);
        end
    end
end