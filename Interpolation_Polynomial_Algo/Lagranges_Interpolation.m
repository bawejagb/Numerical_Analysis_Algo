%Lagrange's Interpolation
n = input("No of data points n: ");
p = input("Interpolate value p: ");
for (i=1:n+1)
    fprintf("Input x(%d): ",i);
    x(i) = input('');
    fprintf("Input y(%d): ",i);
    y(i) = input('');
end
for (i=1:n+1)
    l(i)=1;
    for(j=1:n+1)
        if(i~=j)
            l(i) = l(i)*((p-x(j))/(x(i)-x(j)));
        end
    end
end
sum = 0;
for (i=1:n+1)
    sum = sum+(l(i)*y(i));
end
fprintf("Interpolation f(%d) = %d\n",p,sum);
