pkg load statistics
#1
X = [-2, -1, 0, 1, 2];
Y = [0, 0, 1, 1, 3];
#a)
x_barat = mean(X)
y_barat = mean(Y)
#b)
sx = var(X)
sy = var(Y)
#c)
covariatia = cov(X,Y)
#d)
corelatia = corrcoef(X,Y);
printf("Corelatia este: %d\n", corelatia(2))
#e)
p = polyfit (X, Y, 1)
x1 = linspace(-2,2);
y1 = polyval(p,x1);
figure
plot(X,Y,'o')
hold on
plot(x1,y1)
hold off
#f)
y1 = polyval(p, 2.5)
y2 = polyval(p, 3)

#2
X = [-1, 0, 1, 2];
Y = [2, 1, 2, 11];
#a)
x_barat = mean(X)
y_barat = mean(Y)
#b)
sx = var(X)
sy = var(Y)
#c)
covariatia = cov(X,Y)
#d)
corelatia = corrcoef(X,Y);
printf("Corelatia este: %d\n", corelatia(2))
#e)
p = polyfit (X, Y, 2)
x1 = linspace(-1,2);
y1 = polyval(p,x1);
figure
plot(X,Y,'o')
hold on
plot(x1,y1)
hold off
#f)
y1 = polyval(p, 2.5)
y2 = polyval(p, 3)

#3
X = [20*ones(1, 2), 21*ones(1, 1), 22*ones(1, 3), 23*ones(1, 6), 24*ones(1, 5), 25*ones(1, 9), 26*ones(1, 2), 27*ones(1, 2)]
Y = [75*ones(1, 3), 76*ones(1, 2), 77*ones(1, 2), 78*ones(1, 5), 79*ones(1, 8), 80*ones(1, 8), 81*ones(1, 1), 82*ones(1, 1)]
#a)
x_barat = mean(X)
y_barat = mean(Y)
#b)
sx = var(X)
sy = var(Y)
#c)
covariatia = cov(X,Y)
#d)
corelatia = corrcoef(X,Y);
printf("Corelatia este: %d\n", corelatia(2))
#e)
p = polyfit (X, Y, 1)
x1 = linspace(20,27);
y1 = polyval(p,x1);
figure
plot(X,Y,'o')
hold on
plot(x1,y1)
hold off
#f)
y1 = polyval(p, 2.5)
y2 = polyval(p, 3)