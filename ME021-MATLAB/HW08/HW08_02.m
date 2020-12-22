figure (5)
hold on
crcl = 0:pi/50:2*pi;
valsx = 2 * cos(crcl) + 3;
valsy = 2 * sin(crcl) + 5; 
plot(valsx, valsy,'b', 'linewidth', 3);
axis equal
ylim([0 10]);
xlim([0 10]);
plot(3,5 , '+b','linewidth',1.5)
axis equal
%First label
label1 = text(1,9,'Click where you want a text label for this circle.');
ylim([0 10]);
xlim([0 10]);
[x, y] = ginput(1);
delete(label1);
%actual label
text(x,y,'Radius = 2.0', 'Color', 'blue');
%Line
label2 = text(1,9,'Draw a leader line. ');
[x, y] = ginput(2);
plot(x,y,'--', 'Color','blue');
axis equal
delete(label2);
%Second circle
valsx2 = 0.5 * cos(crcl) + 8;
valsy2 = 0.5 * sin(crcl) + 7;
plot(valsx2, valsy2,'r','linewidth', 3);
ylim([0 10]);
xlim([0 10]);
plot(8, 7, '+r', 'linewidth',1.5)
%Second label
label2 = text(1,9,'Click where you want a text label for this circle.');
[x, y] = ginput(1);
delete(label2);
%actual label
text(x,y,'Radius = 0.5', 'Color', 'red');
%Create the line for c2
label1 = text(1,9,'Draw a leader line.');
[x, y] = ginput(2);
plot(x,y,'--','Color','red');
axis equal
delete(label1);
grid on
ylim([0 10]);
xlim([0 10]);