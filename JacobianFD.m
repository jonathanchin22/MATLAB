function Jac = JacobianFD(eqns, x0 , pert)
f = eqns;
n = length(x0);
for i = 1:n
    for j = 1:n
        x = zeros(n,1);
        x(i) = x0(i);
        %estimate the partial derivative using the modified secant method
        eval = (f(x0 + pert*x)-f(x0))/(pert*x0(i));
        Jac(j,i) = eval(j);
    end
end
end
