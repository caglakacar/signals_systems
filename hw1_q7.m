n= 0:1:40;
x= sin(0.1*pi*n);
stem (n,x);
xlabel('n'); ylabel('x(n)');
title('Stem Plot of sin(0.1 \pi n)');