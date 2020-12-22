syms x 
equation = (x-1)/((x^32)-1);
y=limit(equation,x,1); 
x=linspace(0,2);
for i=linspace(1,100)
f(i)=(x(i)-1)/((x(i).^32)-1);
end

figure;
plot(x,f)
axis equal
hold on
plot([1 1],[1/32 0.5],'--')
axis equal
plot([0.6 1],[1/32 1/32],'--')
axis equal
xlabel('x')
ylabel('f(x)')
text(1,0.6,'x = 1')
text(0.3,1/32,'f(1)=1/32')