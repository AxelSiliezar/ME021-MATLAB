syms y(t) w A B
y(t) = A*cos(w*t) + B*sin(w*t);
ex = diff(y, t, 2) + y;
new = collect(ex,[cos(w*t),sin(w*t)]);
simplify(new);
pretty(new)
latex(new)