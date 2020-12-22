n=input('Enter an integer n (at latest 0) for expression:');
syms x;
equation=(x-1);
for i=0:n
    equation=equation*(x^((2^i))+1);
end
fprintf('Our product is %s \n', (expand(equation)));