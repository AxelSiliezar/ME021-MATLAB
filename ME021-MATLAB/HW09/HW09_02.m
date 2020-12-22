%2a
figure (3)
hor=linspace(0,2*pi,20);
vert=linspace(0,pi,30);
xl0=0;
yl0=0;
zl0=0;
[hor,vert]=meshgrid(hor,vert);
intervals=1;
x=xl0+intervals*sin(vert).*cos(hor);
y=yl0+intervals*sin(vert).*sin(hor);
z=zl0+intervals*cos(vert);
cartesian=sqrt((x-xl0).^2+(y-yl0).^2+(z-zl0).^2);
surf(x,y,z)
colormap(jet)
grid on
box on
axis equal
view([130,30])
xlabel('X')
ylabel('Y')
zlabel('Z')
title('Sphere.')
% Using the sphere function
[x,y,z] = sphere(25);
figure (4)
surf(x,y,z);
colormap (cool)
xlabel('x');
ylabel('y');
zlabel('z');
title('Sphere');
axis equal


%2b
%fileID = fopen("cylinder2.m", 'r');
degree = linspace(-90,90);
radius =1;
x = radius*cosd(degree);
y = radius*sind(degree);
[Ll,Lc,Lq] = cylinder2(x,y);
figure(5)
surf(Ll,Lc,Lq);
colormap (cool)
title("With cylinder2");
xlabel('x');
ylabel('y');
zlabel('z');
view([130,15])
