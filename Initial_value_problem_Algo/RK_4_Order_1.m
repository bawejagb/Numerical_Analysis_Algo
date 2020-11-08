%R-k 4th Order Method 
f = @(x,y) (x+y);
x0 = input("Enter intial value x0: ");
y0 = input("Enter intial value y0: ");
x = input("Enter value of x: ");
h = input("Enter interval value h: ");
n = (x-x0)/h;
x=x0;
y=y0;
for i=1:n
    k1 = h * f(x,y);
    k2 = h * f(x+h/2, y+k1/2);
    k3 = h * f(x+h/2, y+k2/2);
    k4 = h * f(x+h, y+k3);
    y = y + (1/6) * (k1+2*k2+2*k3+k4);
    x = x + h;
end
fprintf("y(%4f) = %4f\n", x, y);
