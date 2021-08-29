pkg load statistics
#1
X = [22.7*ones(1,1), 22.8*ones(1,3), 22.9*ones(1,7), 23.0*ones(1,4),23.1*ones(1,6),23.2*ones(1,7), 23.3*ones(1,5), 23.4*ones(1,2)];
n = 35;
sigma_patrat = 0.35;
sigma = sqrt(sigma_patrat);
p_inc = 0.95;
p_risc = 1 - p_inc;
m_X = mean(X);
z=norminv(1-p_risc/2,0,1);
m1=m_X-(z*sigma/sqrt(n));
m2=m_X+(z*sigma/sqrt(n));
fprintf(" Intervalul de incredere: (m1,m2)= ( %d, %d )\n ", m1,m2);

#2
X = [2.7*ones(1,1), 2.8*ones(1,2), 2.9*ones(1,5), 3.0*ones(1,3),3.1*ones(1,5),3.2*ones(1,4), 3.3*ones(1,2)];
n = 22;
p_inc = 0.98;
p_risc = 1 - p_inc;
s = std(X);
x_bar = mean(X);
t = tinv(1-p_risc/2, n - 1);
m1 = x_bar - (t * s / sqrt(n));
m2 = x_bar + (t * s / sqrt(n));
fprintf("Intervalul de incredere: (m1,m2)= ( %d, %d )\n ", m1,m2);

#3
X = [4.21, 4.03, 3.99, 4.05, 3.89, 3.98, 4.01, 3.92, 4.23, 3.85, 4.20];
n = 11;
p_inc = 0.95;
p_risc = 1 - p_inc;
v = chi2inv(1-p_risc/2, n - 1);
v1 = chi2inv(p_risc/2, n - 1);
S = std(X);
m1 = ((n-1)*S^2)/v;
m2 = ((n-1)*S^2)/v1;
fprintf("Intervalul de incredere pentru sigma^2: (m1,m2)= ( %d, %d )\n ", m1,m2);
fprintf("Intervalul de incredere pentru sigma: (m1,m2)= ( %d, %d )\n ", sqrt(m1),sqrt(m2));

#4
X1 = [1010, 993, 992, 1008, 1006, 998, 1008, 994, 996, 1006, 1005, 1002, 997, 1004, 1002, 1010, 1003];
X2 = [1002, 985, 996, 1010, 1004, 1003, 1010, 993, 1002, 1006, 988, 995];
n1 = 17;
n2 = 12;
p_risc = 0.05;
p_inc = 1 - p_risc;
#a)
s1 = var(X1);
s2 = var(X2);
f = finv(p_risc/2, n1 - 1, n2 - 1);
f1 = finv(1 - (p_risc/2), n1 - 1, n2 - 1);
m1 = (1 / f1) * (s1 / s2);
m2 = (1 / f) * (s1 / s2);
fprintf("Intervalul de incredere a): (m1,m2)= ( %d, %d )\n ", m1,m2);
#b)
x1_bar = mean(X1);
x2_bar = mean(X2);
s1 = var(X1);
s2 = var(X2);
sp = sqrt((((n1 - 1) * s1) + ((n2 - 1) * s2)) / ((n1 + n2 - 2)));
t = tinv(1 - (p_risc/2), n1 + n2 - 2);
m1 = ((x1_bar - x2_bar) - (t * sp * sqrt((1/n1) + (1/n2))));
m2 = ((x1_bar - x2_bar) + (t * sp * sqrt((1/n1) + (1/n2)))); 
fprintf("Intervalul de incredere b): (m1,m2)= ( %d, %d )\n ", m1,m2);
#c)
x1_bar = mean(X1);
x2_bar = mean(X2);
s1 = var(X1);
s2 = var(X2);
c = (s1 / n1) / ((s1 / n1) + (s2 / n2));
n = 1 / ((c^2 / (n1 - 1)) + (((1 - c)^2) / (n2 - 1)));
t = tinv(1 - (p_risc / 2), n);
m1 = ((x1_bar - x2_bar) - (t * sqrt((s1/n1) + (s2/n2))));
m2 = ((x1_bar - x2_bar) + (t * sqrt((s1/n1) + (s2/n2))));
fprintf("Intervalul de incredere c): (m1,m2)= ( %d, %d )\n ", m1,m2);
