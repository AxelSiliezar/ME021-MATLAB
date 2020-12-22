fileID = fopen("HW07_04_array.txt", 'r');
i = load('HW07_04_array.txt');
empty = [];
adds =0;
for e = 1:length(i)
    adds = adds + i(e);
    empty =[empty , adds];
end
 
formatSpec = ['%9.4f,%9.4f,%9.4f,%9.4f,%9.4f\n'];
% format --> swipe line '\n'
fprintf(formatSpec,empty)
fprintf("The addition of all numbers is: %.3f\n", adds)
fileID2 = fopen("HW07_04_array_out_.txt", 'w');
fprintf(fileID2,formatSpec,empty);
fprintf(fileID2,"The addition of all numbers is: %.3f\n", adds);


