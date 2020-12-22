syms n
x=input('Find the probability that x will be greater than what? ');
% constants
const=800;
lowcons=100;
%algebra
algebr=(x-const)/lowcons;
funct=@(n)exp(-n.*n/2);
%Definite integral
def=vpa(int(exp(-n^2/2),algebr,inf)/sqrt(2*pi))*100;
%Numerical integral
num = integral(funct,algebr,inf)/sqrt(2*pi)*100;
fprintf('Definite Integral: probability that x > %f is %f%%\n',x,def)
fprintf('Numerical Integral: probability that x > %f is %f%%\n',x,num)