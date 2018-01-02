function [ x0 ] = long( M )
n = 1;
x0 = 1;
for i = 1:M
    x = collatz(i);
    if length(x) > n
        n = length(x);
        x0 = i;
    end
end

