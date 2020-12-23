%Gauss Elimination
n = input("Number of equations: ");
coff = zeros(n,n+1);
%Input Cofficent of equations in matrix
for( i=1:n)
    for( j=1:n+1)
        fprintf("Enter cofficent of x(%d,%d):",i,j);
        coff(i,j) = input('');
    end
end
%Upper Triangle matrix formation
for(j=1:n-1)
    for(i=j+1:n)
        m = coff(i,j)/coff(j,j);
        for(k=1:n+1)
            coff(i,k) = coff(i,k) - m * coff(j,k);
        end
    end
end
%Back Substitution
for(i=n:-1:1)
    sum=0;
    for(j=i+1:n)
        sum = sum + coff(i,j) * root(j);
    end
    root(i) = (coff(i,n+1) - sum)/coff(i,i);
end
%Printing roots
for(i=1:n)
    fprintf("Root %d : %f\n",i,root(i));
end
    

