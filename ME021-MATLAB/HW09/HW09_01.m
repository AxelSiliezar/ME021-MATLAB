clc ; clear ; 
x = linspace(-10,10);
y = linspace(-10,10); 
a = 0.1; 
[X , Y] = meshgrid(x , y); 
Z = (sin(sqrt(X.^2 + Y.^2)))./ (a + sqrt(X.^2 + Y.^2)); 
%Mesh graph
figure(1); 
mesh(X , Y , Z); 
colormap (spring)
shading interp
title("Mesh Graph"); 
xlabel("X - axis"); 
ylabel("Y - axis"); 
zlabel("Z - axis"); 
%Surf graph
figure(2); 
surf(X , Y , Z); 
colormap(cool)
shading interp
title("Surf Graph"); 
xlabel("X - axis"); 
ylabel("Y - axis"); 
zlabel("Z - axis"); 