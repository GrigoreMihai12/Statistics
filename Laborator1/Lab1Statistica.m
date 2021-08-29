#1
a=[1,2;3,4;5,6]
b=a(1,:);
c=a(3,:);
a(1,:) = c;
a(3,:) = b;
a
#2
a=[1,2,3;4,5,6]
b=a(:,2);
c=a(:,3);
a(:,2) = c;
a(:,3) = b;
a
#3
v=[1,2,3,5,7,11,13]
w=v(3:6)
#4
a=[1,2,3;4,5,6;7,8,9]
b=a(2:3,1:2)
#5
a=zeros(3)
b=ones(3)
c=eye(3)
#6
u=[1,2,3]
v=[4,5,6]
if u == v
  display("vectorii sunt egali");
else
  if u < v
    display("vectorul u este mai mic ca si v");
  else
    display("vectorul v este mai mic ca si u");
  endif
endif
#7
u=[1,2,3]
v=[4,5,6]
a=[2.*u,(-3).*v]
#8
a=[0,2,0,1;2,2,3,2;4,-3,0,1;6,1,-6,-5]
b=[0;-2;-7;6]
c=a\b
#11
format short
a=4/3
format long
a=4/3
format hex
a=4/3
format +
a=4/3
format bank
a=4/3
#12
a=1;b=2;c=3;
fprintf('a=%d, b=%d, c=%d \n',a,b,c);
fprintf('a=%d b=%d ', a, b); fprintf('a+b=%d \n ', a+b);
a = 3.7; b = 4;
fprintf('a=%2.3f , b=%8d\n', a, b);
fprintf('Suma este = %2.5f \n', a+b);
x = 0:0.2:1;
disp(x)
fprintf('%2.3f ',x); fprintf('\n');
fprintf('%2.3f \n',x);
a=[x; 5*x];
disp(a)
fprintf('%4.2f %10.6f\n',a);
#13
help for
help if
help while