nums = [0, 15, 45, 180, 210, 279];
first = cosd(-nums);
second = cosd(nums);
third = tand(pi*180/pi-nums);
fourth = -tand(nums);
for i =1: length(nums)
    fprintf('COS: for theta = %.4f left side = %.4f right side %.4f\n',nums(i), first(i),second(i));
    fprintf('TAN: for theta = %.4f left side = %.4f right side %.4f\n',nums(i),third(i),fourth(i));
end
    