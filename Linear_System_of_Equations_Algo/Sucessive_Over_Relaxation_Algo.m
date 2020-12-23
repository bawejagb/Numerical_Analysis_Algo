%Successive over relaxation method (SOR)
n = input("Number of equations: ");
a = zeros(n,n);
b = zeros(1,n);
x = zeros(1,n);
error = ones(1,n);
itr_count = 0;
%Input Cofficent of equations in matrix
disp("Left side cofficents");
for( i=1:n)
    for( j=1:n)
        fprintf("Enter cofficent of a(%d,%d):",i,j);
        a(i,j) = input('');
    end
end
%Input constant(B) value of equations in matrix
disp("Right side cofficents");
for (i=1:n)
    fprintf("Enter cofficent of b(%d):",i);
    b(i) = input('');
end
%Input initial approximation and tolerance
for (i=1:n)
    fprintf("Enter initial approximation of x(%d):",i);
    x(i) = input('');
end
tolerance = input("Enter tolerance value : ");
%Input weight of cofficents
w = input("Value of weight w: ");
%Iterative algo
while norm(error,inf) > tolerance
    itr_count = itr_count + 1;
    for (i=1:n)
        x_old(i) = x(i);
        sum(i) = 0;
        for (j=1:n)
            if j ~= i
                sum(i) = sum(i) + a(i,j)*x(j);
            end
        end
        x(i) = ((1-w)*x(i)) + (w*(b(i) - sum(i))/a(i,i));
        error(i) = abs(x_old(i) -x(i));
    end
end
%Solution of equation with iteration count
fprintf("Get soltion in iteration: %d\n", itr_count);
for (i=1:n)
    fprintf("x(%d): %d\n",i,x(i));
end
