data = fopen('BaseGemPrices.txt');
skip = fgetl(data);
skiptoo = fgetl(data);

Ren = textscan(data, 'x%f %11c %fGP');
more = length (Ren{1});
for R = 1:more
    Tq(R) = (Ren{3}(R)/Ren{1}(R)); 
end
more2(1,:) = string(Ren{2}); 
more2(2,:) = Tq;
%
format = '%16s %17.2f GP\n';
fprintf ('%16s %20s \n', 'Gemstone','Price/Gem');
fprintf(format, more2);
%
newfil = fopen('GemsOut.txt','w');
fprintf(newfil, '%16s %20s\n','Gemstone','Price/Gem');
fprintf(newfil, format, more2);