%Least Square for Approximation degree two
%For user input, Uncomment below code and Comment sample input
%{
n = input("Enter number of points n: ");
for (i=1:n)
    fprintf("Enter value of x(%d): ",i);
    x(i) = input('');
    fprintf("Enter value of y(%d): ",i);
    y(i) = input('');
end
%}
syms z;
n = 5;                              %Number of data inputs
x=[-2,-1,0,1,2];                    %x input in array
y=[15,1,1,3,19];                    %f(x) input in array
sum_x = sum(x);
sum_y = sum(y);
sum_xy = sum(x.*y);
sum_x_sqr_y = sum(x.^2.*y);
sum_x_sqr = sum(x.^2);
sum_x_cub = sum(x.^3);
sum_x_pow4 = sum(x.^4);
A = [n, sum_x, sum_x_sqr; sum_x, sum_x_sqr, sum_x_cub; sum_x_sqr, sum_x_cub, sum_x_pow4];
B = [sum_y; sum_xy; sum_x_sqr_y];
X = inv(A)*B;                       %Taking inverse of A*X=B
f(z) = (X(1)+X(2)*z+X(3)*z^2);      %Generalised poly function
fprintf("Poly function: P(x) = %.4f + %.4f*x + %.4f*x^2\n",X(1),X(2),X(3));

