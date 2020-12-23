%LU Factorization
n = input("Number of equations: ");
L = zeros(n,n);
U = zeros(n,n);
%Input Cofficent of equations in matrix
for(i=1:n)
    for(j=1:n)
        fprintf("Cofficent of x(%d,%d): ",i,j);
        U(i,j) = input('');
    end
end
%Input constant(B) value of equations in matrix
for(i=1:n)
    fprintf("Cofficent of B(%d): ",i);
    B(i) = input('');
end
%Upper Traingle (U) matrix and
%Lower Triangle (L) matrix formation
for(j=1:n-1)
    for(i=j+1:n)
        m = U(i,j)/U(j,j);
        L(i,j) = m;
        for(k=1:n)
            U(i,k) = U(i,k) - m * U(j,k);
        end
    end
end
L = L + eye(n);
%Forward Substitution of Ly=B
for(i=1:n)
    sum=0;
    for(j=i-1:-1:1)
        sum = sum + L(i,j) * y(j);
    end
    y(i) = (B(i) - sum)/L(i,i);
end
%Back Substitution of Ux=y
for(i=n:-1:1)
    sum=0;
    for(j=i+1:n)
        sum = sum + U(i,j) * x(j);
    end
    x(i) = (y(i) - sum)/U(i,i);
end
%Printing roots
for(i=1:n)
    fprintf("Root %d : %f\n",i,x(i));
end
