f = -[20,25]; 
A = [12,20];
B = 1800;
Aeq = [1 1];
beq = 120;  % equality constrain 
lb = [0 0]; % lower bond 
up  = [120 120]; % upper bond 
[x, obj] = linprog(f,A,B,Aeq,beq,lb,up);  
fprintf('the profit is %4.2f\n', -obj)
fprintf('The number of plastic injections is %2.0f\n', x)