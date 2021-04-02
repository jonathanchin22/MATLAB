function dx = DERIV (t,x);
%set a length variable and an empty derivative vector
n = length(x);
dx = zeros(n,1);
%fill the first and last entries of dx using forward and backward
%difference
i = t(2)-t(1) ;
dx(1) = (x(2)-x(1))/i ;
j = t(n)-t(n-1) ;
dx(n) = (x(n)-x(n-1))/j ;
%fill the middle entries using central difference derivative.
for i=2:n-1
    h = t(i+1)-t(i) ;
    dx(i) = (x(i+1)-x(i-1))/2/h ;
end
