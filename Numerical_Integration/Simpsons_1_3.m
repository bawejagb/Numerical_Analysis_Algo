%Simpson's 1/3 Method 
f = @(x)(1/(1+x^2));
L = input("Enter Lower Limit: ");
U = input("Enter Upper Limit: ");
n = input("Enter Sub-Intervals Count: ");
h = (U-L)/n;
sum1 = 0;
sum2 = 0;
for (i=1:n-1)
    if(mod(i,2) == 1)
        sum1 = sum1 + f(L+i*h);
    else
        sum2 = sum2 + f(L+i*h);
    end
end
itg = (h/3)*(f(L)+f(U)+4*sum1+2*sum2);
fprintf("Integeral Value : %d\n",itg);