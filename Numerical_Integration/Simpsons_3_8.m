%Simpson's 3/8 Method 
f = @(x)(1/(1+x^2));
L = input("Enter Lower Limit: ");
U = input("Enter Upper Limit: ");
n = input("Enter Sub-Intervals Count: ");
h = (U-L)/n;
sum1 = 0;
sum2 = 0;
for (i=1:n-1)
    if(mod(i,3) == 0)
        sum1 = sum1 + f(L+i*h);
    else
        sum2 = sum2 + f(L+i*h);
    end
end
itg = (3*h/8)*(f(L)+f(U)+2*sum1+3*sum2);
fprintf("Integeral Value : %d\n",itg);