%Bisection Method
%Equation f(x) =  x^3 - 5*x + 1 = 0
f =@(x) x^3 - 5*x + 1;
%Input smallest approximation range [a,b] and tolerance
a = input('Enter value of a: ');
b = input('Enter value of b: ');
tolerance = input ('Enter value of tolerance: ');
error(1) = 1;
itr = 1;
if f(a) * f(b) > 0
    disp('input Approximations are wrong');
else
    %Iterative algo
    while error(itr) > tolerance
        c = (a+b)/2;
        root(itr)=c;
        if f(a) * f(c) < 0
            b = c;
        else
            a = c;
        end
        error(itr+1) = abs(f(c));
        itr = itr + 1;
    end
end
%Show root
fprintf('The value of root is %f\n', c);
%Plot Error vs Iteration graph
j = 1:itr;
plot(j, error);
xlabel('No. of Iteration');
ylabel('Error');
