function [c, n] = bisection(f, a, b, tol, N_max) %setting the input variables
  fa = f(a); fb = f(b); %further defines dependent variables
  if (fa*fb > 0) %establishes a loop
    fprintf('f(a) and f(b) are the same sign!\n'); %will print line if 'if' statement is true
    c = nan; n = nan; %creates a replaceable entry for variables c and n
    return; %do the thing
  end %ends the loop
  res = 1e10;%establishing residual
  c = zeros(1,N_max); %establishes the zero vector that is N_max long
  for n=1:N_max %starting another loop at one, ending at n_max
    c(n) = 0.5*(a+b); %defining c(n) based in bisection
    fc = f(c(n)); %defining f(c) - simplifying for future use
    if(abs(fc) == 0 || abs((b-a)/2) < tol) %boolean, if either is true, the loop will end
      break;
    end
    if (fa*fc > 0) %boolean, if product is greater than zero, keep going & skip 'else', if not, skip to the 'else'
      a = c(n); %redefining variable
      fa = fc; %redefining variable
    else %second part of boolen, redefines b and fb
      b = c(n);
      fb = fc;
    end %ends if statement
  end %ends loop
  if (n == N_max && res > tol) %boolean,used for the N_maxth iteration, loop will print below line if both conditions are true
    fprintf('Failed to converge in maximum number of iterations'); %line that gets printed - essentailly means no solution
  end %ends boolean
  c = c(1:n); %truncate c in the case there are fewer than N_max variables
end %end function
%inputs: the function, tol, a, b, N_max
%outputs: c and n, or 'no solution' (line 25)