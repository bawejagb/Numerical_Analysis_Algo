%Newton's Method
%Equation f(x)=x * e^x - 1 = 0
f = @(x) (x*exp(x)-1);
syms g(x);
g(x) = diff(f,x);
%Input tolerance
tolerance = input("Enter value of Tolerance: ");
while 1
    %Input initial approximation
    x0 = input("Enter value of Initial Approx: ");
    error(1) = 1;
    i = 1;
    if double(g(x0)) == 0
        disp("Change Initial Apporx!");
    else
        %Iterative algo
        while error(i) > tolerance
            if double(g(x0)) == 0
                disp("Change Initial Apporx!");
                break;
            else
                x1 = x0 - f(x0)/double(g(x0));
                root(i)=x1;
                i = i+1;
                error(i) = abs(x1-x0);
                x0 = x1;
            end
        end
        if error(i) < tolerance
            break;
        end
    end
end
%Show root
fprintf('Root = %d\n',x0);
%Plot Error vs Iteration graph
y = 1:i;
plot(y,error);
xlabel('No. of Iteration');
ylabel('Error');