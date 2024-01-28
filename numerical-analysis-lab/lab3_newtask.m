clc
% Setting x as symbolic variable
syms x;
y = input('Enter non-linear equation: ');
a = input('Enter first guess: ');
b = input('Enter second guess: ');
e = input('Tolerable error: ');
% Finding functional value
fa = eval(subs(y,x,a));
fb = eval(subs(y,x,b));
% Implementing Bisection Method
if fa*fb > 0
    disp(['Given initial values do not' ... 
        'break the root']);
else c=(a+b)/2;
    fc=eval(subs (y,x,c));
    fprintf('\n\na\t\t\tb\t\t\tc\t\t\f(a)\t\t\f(b)\t\t\tf(c)\n');
    while abs(fc)>e
        fprintf('%f\t%f\t%f\t%f\t%f\n',a,b,c,fa,fb,fc);
        if fa*fc< 0
            b=c;
        else
            a=c;
        end
        c=(a+b)/2;
        fc = eval(subs(y,x,c));
    end
    fprintf('nRoot is: %f\n',c);
end