%Least Square for Exponential Curve y=b*e^(a*x)
% For User Input Data Uncomment below code and comment Sample inputs
%{ 
n = input("Enter number of points n: ");
for (i=1:n)
    fprintf("Enter value of x(%d): ",i);
    x(i) = input('');
    fprintf("Enter value of y(%d): ",i);
    y(i) = input('');
end
%}
%Sample Inputs
syms z;
n = 5;
x=[1.00,1.25,1.50,1.75,2.00];
y=[5.10,5.79,6.53,7.45,8.46];
sum_x = sum(x);
sum_Y = sum(log(y));
sum_xY = sum(x.*log(y));
sum_x_sqr = sum(x.^2);
A = [n, sum_x; sum_x, sum_x_sqr];
B = [sum_Y; sum_xY];
X = A\B;                            %Inverse function
f(z) = (exp(X(1))+X(2)*z);
fprintf("Poly function: P(x) = %.4f*e^(%.4f*x)\n",exp(X(1)),X(2));

