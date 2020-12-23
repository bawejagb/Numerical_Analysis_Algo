%Fixed point iteration Method
%Equation f(x) = x*e^x - 1 =0, g(x) = e^-x
f = @(x)(x*exp(x)-1);
syms g(x);
g(x) = exp(-x);
h = diff(g,x);
%Input tolerance
tolerance = input ('Enter value of tolerance: ');
while 1
    %Input initial approximation
    a = input('Enter value of Approximation: ');
    error(1) = 1;
    i = 1;
    if abs(double(h(a))) >= 1
        disp('Wrong Approximation!');
    else
        %Iterative algo
        while error(i) > tolerance
            if abs(double(h(a))) < 1
                x1 = double(g(a));
                i = i+1;
                error(i) = abs(x1-a);
                a = x1;
            else
                break;
            end
        end
        if error(i) < tolerance
            break;
        end
    end
end
%Show root
fprintf('Root = %d\n',a);
%Plot Error vs Iteration graph
y = 1:i;
plot(y,error);
xlabel('No. of Iteration');
ylabel('Error');