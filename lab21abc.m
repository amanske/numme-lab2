
x = -2:0.1:2;
f = 7*x-20*cos(3*x-5); %5 nollställen, i intervallet -2<x<2


plot(x,0);
hold on
plot(x,f);
hold off

approx = [-1.8 -1 0 1.5 2];

format short e
counter = 1;
for x = approx
   dx = 1;
   disp('_________________________________________________________')
   disp('Nollställe: ')
   disp(counter)
   iterationer = 0;
   root = fzero('y', x);
   while norm(dx) > 0.5e-9 
       f = 7*x-20*cos(3*x-5);
       fp = 7+60*sin(3*x-5);
       dx = -f/fp;
       xold = x;
       x = x+dx;
       k = norm(x-root)/(norm(xold-root))^2;
       disp('   x           dx            k');
       disp([x dx k])
       iterationer = iterationer + 1;
       
   end
   
   
   disp('Antal iterationer: ')
   disp(iterationer)
   counter = counter + 1;
end