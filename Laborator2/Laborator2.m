#1
pkg load statistics

#2
x=0:16;
y=geopdf(x,0.3);
subplot(4,4,1)
bar(x,y,1)
xlabel('Observation')
ylabel('Probability')
subplot(4,4,2)
stairs(x,y)
xlabel('Observation')
ylabel('Cumulative Probability')

#3
x = 0:7;
y = binopdf(x,7,0.3);
subplot(4,4,3)
bar(x,y,1)
xlabel('Observation')
ylabel('Probability')
x = 0:7;
y = binocdf(x,7,0.3);
subplot(4,4,4)
stairs(x,y)
xlabel('Observation')
ylabel('Cumulative Probability')

#4
x = 0:40;
y = poisspdf(x,10);
subplot(4,4,5)
bar(x,y,1)
xlabel('Observation')
ylabel('Probability')
x = 0:40;
y = poisscdf(x,10);
subplot(4,4,6)
stairs(x,y)
xlabel('Observation')
ylabel('Cumulative Probability')

#5
[m,sigma] = tstat(100);
sigma = sqrt(sigma);
x = m - 3 * sigma :0.01 : m + 3 * sigma;
subplot(4,4,7)
plot(x,pdf('t',x,100),'Color','black','LineStyle','-')
subplot(4,4,8)
plot(x,cdf('t',x,100))

#6
x = 0:001:6;
subplot(4,4,9)
plot(x,normpdf(x,3,1))
subplot(4,4,10)
plot(x,normcdf(x,3,1))

#7
[m,sigma]=expstat(10);
sigma=sqrt(sigma);
x = max(0, m - 3 * sigma) : 0.01 : m + 3 * sigma;
subplot(4,4,11)
plot(x, exppdf(x,10))
subplot(4,4,12)
plot(x, expcdf(x,10))
