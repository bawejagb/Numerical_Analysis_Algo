%Lagrange's Interpolation General eq
syms p;
syms l(p);
syms t(p);
x = [5,7,11,13,17];
y = [150,392,1452,2366,5202];
n = 4;
t(p) = 0;
for (i=1:n+1)
    l(p) = 1;
    for(j=1:n+1)
        if(i~=j)
            l(p) = l(p)*((p-x(j))/(x(i)-x(j)));
        end
    end
    t(p) = t(p) + l(p)*y(i);
end
fliplr(t(p))
%a = input("Interpolate value p: ");
%sum =(double(t(a)));
%fprintf("Interpolation f(%d) = %d\n",a,sum);
a = x(1):0.1:x(n+1);
plot(a, t(a));
