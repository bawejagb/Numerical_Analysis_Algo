%Modified Eulers Method 
f = @(x,y) (x+y);
x0 = input("Enter intial value x0: ");
y0 = input("Enter intial value y0: ");
x = input("Enter value of x: ");
h = input("Enter interval value h: ");
n = (x-x0)/h;
x=x0;
y=y0;
for i=1:n
    y1 = y + h * f(x,y);
    y0 = y1;
    y1 = y + (h/2) * (f(x,y) + f(x+h,y1));
    y = y1;
    x = x + h;
end
fprintf("y(%4f) = %4f\n", x, y);
