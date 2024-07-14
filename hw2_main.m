x= randi(20,7); 
% randi() Uniformly distributed pseudorandom integers

y= eye(4); 
% eye() Identity matrix

z= productFunction(x, y);

display(x);
display(y);
display(z);