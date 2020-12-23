%Secant Method
%Equation f(x) =  x^3 - 5*x + 1 = 0
f = @(x) (x^3 - 5*x + 1);
%Input smallest approximation range [a,b] and tolerance
a = input ('\n Enter the Point A: ');
b = input ('\n Enter the Point B: ');
tol = input ('\n Enter the tolerance: ');
err(1) = 1; i = 1;
%Iterative algo
while (err(i) > tol)
    x = a - ((b - a)*f(a) / (f(b) - f(a)));
    root(i)=x;
    err(i+1) = abs (x - b);
    a=b;
    b = x;
    i = i + 1;
end
%Show root
fprintf('\n Root is %2.4f\n', x);
%Plot Error vs Iteration graph
j = 1:i;
plot(j,err);
xlabel('No. of Iteration');
ylabel('Error');
