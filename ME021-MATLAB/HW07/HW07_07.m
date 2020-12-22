function [funccos, funcsin] = HW07_07(x, y, r, n)
   angle = linspace(0, 2*pi, n);
   funccos = [];
   funcsin = [];
   for i=1:length(angle)
        funccos(i) = x + (r * cos(angle(i)));
        funcsin(i) = y + (r * sin(angle(i)));
   end
end