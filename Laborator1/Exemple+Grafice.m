#Exemple
a= [1 2 3] 
b= [4; 5; 6]
c=a * b
d = b'
e=a.*d
f=a.^2
g=a.^d
v = 1:6
w = 2:3:10
y= 10 : -1 : 0
exp(a)
sqrt(a)
h= [-2 -9 8]
k = abs(h)
mean(a)
sum(a)
prod(a)
a= [1 2 3; 4 5 6; -2 0 1]
inv(a)
det(a)
b= [4 8 12;-1 0 5; 2 3 8]
q=b'
c=a*b
d=a.*b
e=a.^2
b= [10 12 20]'
x=a\b
f=abs(a)
m=mean(a)
s=sum(a)
p=prod(a)
max(a)
min(a)
diag(a)
triu(a)
tril(a)
m= [2 3 5; 7 11 13; 17 19 23]
m(2,1)
m(:,1)
m(:,3)
m(2,:)
m(3,:)
m(1,1 : 3)
m(2 : 3,2 : 3)
eye(8)
eye(5,7)
zeros(5,7)
ones(7,9)
magic(3)

#1.1
subplot(3,3,1)
x = -2:0.1:4;
f = x.^2 + x + 5
plot(x,f)
#1.2
subplot(3,3,2)
x = -4:0.1:4
g = abs(x)
plot(x,g)
#1.3
subplot(3,3,3)
x=0:0.01:1
h=exp(10*x.*(x-1)).*sin(12*pi.*x)
plot(x,h)
#2
subplot(3,3,4)
a = 12;
b = 5;
t = 0:0.1:10*pi;
xt=(a+b)*cos(t)-b*cos((a/b+1)*t);
yt=(a+b)*sin(t)-b*sin((a/b+1)*t);
plot(xt,yt)
#3
subplot(3,3,5)
f=zeros(1,51);
for i=0:50
  if mod(i,2) == 0
    f(i + 1) = i/2;
  else
    f(i+1) = 3*i+1;
   endif
endfor
plot(i,f)
