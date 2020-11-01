%Trapezoidal Method 
f = @(x)(1/(1+x^2));
L = input("Enter Lower Limit: ");
U = input("Enter Upper Limit: ");
n = input("Enter Sub-Intervals Count: ");
h = (U-L)/n;
sum = 0;
for (i=1:n-1)
    sum = sum + f(L+i*h);
end
itg = (h/2)*(f(L)+f(U)+2*sum);
fprintf("Integeral Value : %d\n",itg);