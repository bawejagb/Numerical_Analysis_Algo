%Least Square for Curve y=c0*x+c1/x^1/2
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
x=[0.2,0.3,0.5,1,2];
y=[16,14,11,6,3];
sum_x_sqr = sum(x.^2);
sum_root_x = sum(x.^(1/2));
sum_inv_x = sum(1./x);
sum_xy = sum(x.*y);
sum_root_inv_xy = sum((1./x.^(1/2)).*y);
A = [sum_x_sqr, sum_root_x; sum_root_x, sum_inv_x];
B = [sum_xy; sum_root_inv_xy];
X = A\B;                            %Inverse function
f(z) = (X(1)*z + X(2)/(z^(1/2)));
fprintf("Poly function: P(x) = %.4f*x + %.4f/(x^1/2)\n",X(1),X(2));
