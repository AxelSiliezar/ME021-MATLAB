 %HW06_04.m
% Calculate the stretch due to an axial force applied to a % uniform, slender rod, using Hooke's law.
% d = the rod diameter (milimeters)
d = input("Enter the rod diameter in milimeters: "); % l = the rod length (meters)
l = input("Enter the rod length in meters: ");
% F = the force on the rod (Newtons)
F = input("Enter the applied force in Newtons: ");
E = 200*10^9; % 200 GPa (elastic modulus of steel) 
A = pi*(d/100000.0)^2/4;
delta = ((F*l)/(E*A));
fprintf("stretch = %.2f mm\n", delta)
