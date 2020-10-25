%Least Square Approximation for degree one
% n = input("Enter number of points n: ");
% for (i=1:n)
%     fprintf("Enter value of x(%d): ",i);
%     x(i) = input('');
%     fprintf("Enter value of y(%d): ",i);
%     y(i) = input('');
% end
syms z;
n = 10;
x=[1,2,3,4,5,6,7,8,9,10];
y=[1.3,3.5,4.2,5,7,8.8,10.1,12.5,13,15.6];
sum_x = sum(x);
sum_y = sum(y);
sum_xy = sum(x.*y);
sum_x_sqr = sum(x.^2);
A = [n, sum_x; sum_x, sum_x_sqr];
B = [sum_y; sum_xy];
X = inv(A)*B;
f(z) = (X(1)+X(2)*z);
fprintf("Poly function: P(x) = %.4f + %.4f*x\n",X(1),X(2));

