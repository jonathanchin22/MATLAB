function U = row_echelon(A)
%Forward elimination with partial pivoting
[m,n] = size(A);
U = [A];
    for k = 1:n
        for i = k+1:n
            if U(i,k) > U(k,k)
                U([i k],:)= U([k k],:);
            end
            coeff = U(i,k)/U(k,k);
            U(i,k:n) = U(i,k:n)-coeff*U(k,k:n);
        end
    end