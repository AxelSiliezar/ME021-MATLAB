% A
syms x
I = (x - 5)^2 * (x + 5)^2 + 25*(2*x^2 - 25 );
Q = expand( (x - 5)^2 * (x + 5)^2 + 25*(2*x^2 - 25 ));
if(Q == x^4)
fprintf("%s = %s\n", I, Q);
end

%B
syms x
equation = x^4 - 16 == 0;
S = solve(equation);
fprintf("The roots of %s are:\n", equation);
disp (S)