function X = naive_gauss(A,b)

[m,n] = size(A);
% In order to avoid errors in calculating determinant, round to 10 decimals
determinate = round(det(A),10);
% Initialize augmented matrix
M = [A b];
M_dim = n+1;
% Series of Check's precursing function 
if m ~= n
    disp("Matrix [A] is not a square matrix")
elseif m ~= size(b,1)
    disp("Matrix dimension mismatch")
elseif determinate == 0
    disp("Matrix [A] is a singular matrix")
else
    %Forward elimination
    for k = 1:n-1
        for i = k+1:n
            coeff = M(i,k)/M(k,k);
            M(i,k:M_dim) = M(i,k:M_dim)-coeff*M(k,k:M_dim);
        end
    end
    %Backwards Substitution
    X = zeros(n,1);
    X(n) = M(n,M_dim)/M(n,n);
    for i = n-1:-1:1
    X(i) = (M(i,M_dim)-M(i,i+1:n)*X(i+1:n))/M(i,i);
    end
end
