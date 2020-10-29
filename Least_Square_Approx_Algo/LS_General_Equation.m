%Least Square for General Equation of degree D
deg = input("Enter value fo Degree D: ");
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
x=[1,2,3,4,5,6,7,8,9,10];
y=[1.3,3.5,4.2,5,7,8.8,10.1,12.5,13,15.6];
syms z;
A = zeros(deg+1, deg+1);
B = zeros(deg+1,1);
n = 10;
for i=1:deg+1
    B(i,1) = sum(x.^(i-1).*y);
    for j=i:deg+1
        if(i == j)
            if(i == 1)
                 A(i,j) = n;
            else
                A(i,j) = sum(x.^(2*(i-1)));
            end
        else
            A(i,j) = sum(x.^(i+j-2));
            A(j,i) = A(i,j);
        end
    end
end
X = A\B;
f(z) = 0.*z;
fprintf("Poly function: P(x) = ");
for i=1:deg+1
    f(z) = f(z)+(X(i)*z.^(i-1));
    if (i == deg+1)
        fprintf("%.4f*x^%d\n",X(i),(i-1));
    else
        fprintf("%.4f*x^%d + ",X(i),(i-1));
    end
end

