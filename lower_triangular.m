function L = lower_triangular(A)
%Forward elimination with partial pivoting
[m,n] = size(A);
L = [A];
    for k = 1:n
        for i = k+1:1
            if L(i,k) > L(k,k)
                L([i k],:)= L([k k],:);
            end
            coeff = L(i,k)/L(k,k);
            L(i,k:n) = L(i,k:n)-coeff*L(k,k:n);
        end
    end