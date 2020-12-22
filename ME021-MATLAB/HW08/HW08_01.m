figure(2)
% first subplot
radius = 2;
x = 1;
y = 1.5;
theta = deg2rad(45) : pi / 50 : deg2rad(180);
pox = radius * cos(theta) + x;
poy = radius * sin(theta) + y;
subplot(2, 2, 1)
plot(pox, poy, 'b');
axis equal
hold on
plot(1, 1.5, '+r')
axis equal
ylim([-1 4.2]);
xlim([-2 4]);
xticks(-1:1:3);
yticks(-1:1:4);
grid on
title('Arc')
hold off

% second subplot
x = 0:0.5:10;
y = 2*sin(x);
subplot(2, 2, 2);
plot(x, y, '--r');
title('System Response')
xlabel('time (sec)')
ylabel('response(m)')
xticks(0:2:10);
yticks(-2:0.5:2);
ylim([-2 2]);
xlim([0 10]);
grid on

% data
theadd = 0:pi/50:4*pi;
first = cos(2*theadd);
second = -2*sin(2*theadd);
subplot(2, 2, [3 4])
% third subplot
plot(theadd, first, '--b', 'LineWidth', 2)
hold on
plot(theadd, second, '-.m', 'LineWidth', 2)
legend('position (m)', 'velocity (m/s)', 'Location', 'northwest')
title('System Response')
xlabel('time (sec)')
ylabel('response (m or m/s)')
ylim([-2 2]);
xlim([0 10]);
grid on
xticks(0:1:10);
yticks(-2:0.5:2);
hold off