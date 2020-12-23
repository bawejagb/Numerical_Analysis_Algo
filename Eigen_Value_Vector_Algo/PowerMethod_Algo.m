%Power Method to find largest eigen value and vector
n = input("Order of matrix n: ");
a = zeros(n,n);
x = zeros(1,n);
error = 1;
%Input Cofficent of equations in matrix A
for( i=1:n)
    for( j=1:n)
        fprintf("Enter cofficent of a(%d,%d):",i,j);
        a(i,j) = input('');
    end
end
%Input initial approximation X and tolerance
for (i=1:n)
    fprintf("Enter initial approximation of x(%d):",i);
    x(i) = input('');
end
tolerance = input("Enter tolerance value : ");
x=transpose(x);
%Iterative algo
while norm(error,inf) > tolerance
    z=a*x;
    z_max = max(abs(z));
    z=z/z_max;
    error = z-x;
    x=z;
end
%Show Largest eigen value and vector
fprintf("Eigen Value is %d\n",z_max);
disp("Eigen vector is ");
disp(x);