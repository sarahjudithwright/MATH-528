function  [x]  = collatz( x0 )
x = zeros(2,1);
x(1) = x0;
i = 1; %counter variable
ct = x(i);
    while ct ~= 1
        if mod(ct,2) == 0
            x(i+1) = ct/2;
        else
            x(i+1) = ct*3 + 1;
        end
        i = i + 1;
        ct = x(i);
    end
end

