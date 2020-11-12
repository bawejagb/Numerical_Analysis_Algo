%Newton's divided difference Interpolation
n = input("No of data points n: ");
p = input("Interpolate value p: ");
for (i=1:n+1)
    fprintf("Input x(%d): ",i);
    x(i) = input('');
    fprintf("Input f(%d): ",i);
    f(i) = input('');
    D(1,i) = f(i);
end
for i=2:n+1
    for j=i:n+1
        D(i,j) = (D(i-1,j) - D(i-1,j-1))/(x(j)-x(j-i+1));
    end
end
for i=1:n
    pro(i) = 1;                     
    for j=1:i
        pro(i)=pro(i)*(p-x(j));
    end
end
sum = D(1,1);
for i =1:n
    sum = sum + (pro(i)*D(i+1,i+1));
end
fprintf("NDDs Interpolation f(%d) = %d\n",p,sum);
