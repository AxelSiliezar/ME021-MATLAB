%
t = atan(1);
fprintf('tan(1)^-1=%10f\n',t)
%
f=@(x) sin(x).^2;
nis = integral(f,0,pi/2);
fprintf ('Integration of sin(x)^2 =%10f\n',nis)
%
f=@(x) sqrt(1-x.^2);
sw= integral(f,0,1);
fprintf ('Integration of sqrt(1-x^2) =%10f\n',sw)
fprintf('All three result are %8f therefore all three are equal.\n', sw)