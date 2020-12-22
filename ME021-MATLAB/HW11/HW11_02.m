data = fopen('CompressionVersusHeight.txt');
skip = fgetl(data);
skiptoo = fgetl(data);
skipthree = fgetl(data);
col = textscan(data,'%d %f %f');
x = col{2}(:);
y = col{3}(:);
x = x';
y = y';
plot(x,y,'+','color','green')
f_string = 'A*sqrt(x)';
func= fittype(f_string,'independent','x');
fiting = fit(x',y',func);
hold on 
ylim([0.2 1.4]);
xlim([0 2]);
grid on
title('Data with x = A*sqrt(h) curve fit A= 0.9836')
ylabel('compression, x(m)')
xlabel('height, h(m)')
legend('data', 'fit', 'Location', 'East')
plot(x,fiting.A.*sqrt(x),'b-')