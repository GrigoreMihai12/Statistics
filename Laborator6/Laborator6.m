pkg load statistics
#1
# Testul Z privind media teoretica
X = [3.5, 3.3, 3.6, 3.2, 3.4, 3.1, 3.5, 3.7, 3.3];
n = 9;
sigma = 0.18;
alpha = 0.04;
#H0
m0 = 3.6; 
m = m0; # test Z la stanga H1 : m < m0

X_barat = mean(X);
# cuantila z
z_alpha = norminv(alpha, 0, 1);

Z = (X_barat - m)/(sigma/sqrt(n));
printf("Valoarea statisticii de test: %d\n", Z);

fprintf("Regiunea de respingere:U=(-inf,%d]\n",z_alpha);

[h, P, ci, zval, zcrit] = ztest(X, m0, sigma, "alpha", 0.04, "tail", "left");

 if (h == 1)
  printf("Se respinge ipoteza nula H0 \n");
else
  printf("Se accepta ipoteza nula H0 \n");
endif 


#2
fprintf("\nProblema2:\n");
#Testul T privind media teoretica
X=repelem([2.51 2.52 2.53 2.54 2.55 2.56 2.57 2.58 2.59],[1 2 4 5 7 6 7 2 1]);
n=size(X,2);

#H0: m=2.55 (<=2.55) cu alternativa
#H1: m>2.55 => test T la dreapta
m0=2.55;

alfa=0.05;

#Media de selectie a variabilei aleatoare X:
xmean=mean(X);

#Abaterea standard de selectie a variabilei aleatoare X:
s=std(X);

#U=[t_(1-alfa),inf);

#cuantila t
t_1_alfa=tinv(1-alfa,n-1);

t0=(xmean-m0)/(s/sqrt(n));
fprintf("\nValoarea statisticii de test este:%d\n",t0);

fprintf("Regiunea de respingere:U=[%d,+inf)",t_1_alfa);

[h,P,ci,stats]=ttest(X,m0,"alpha",0.05,"tail","right");


 if (h == 1)
  printf("\nSe respinge ipoteza nula H0 \n");
else
  printf("\nSe accepta ipoteza nula H0 \n");
endif


#3
fprintf("\nProblema3:\n");
#Testul ?2 privind dispersia teoretica a legii normale
X=[6.16 6.55 5.32 6.26 6.10 5.61 5.87 6.10 6.83 7.07 5.60 6.91 6.22 5.98 6.21 5.94 5.96 6.45];
#H0: sigma^2=0.4^2  cu alternativa
#H1: sigma^2!=0.4^2 => test x^2 bilateral

n=size(X,2);
variance0=0.4^2;

alfa=0.05;

#U=(-inf,h_alfa/2] U [h_1_alfa/2,inf)

#Dispersia de selectie
variance=var(X);

v0=((n-1)*variance)/variance0;
fprintf("\nValoarea statisticii de test este:%d\n",v0);

h_alfa_2=chi2inv(alfa/2,n-1);
h_1_alfa_2=chi2inv(1-alfa/2,n-1);
fprintf("Regiunea de respingere:U=(-inf,%d] U [%d,inf)\n",h_alfa_2,h_1_alfa_2);

[h,P,ci,stats]=vartest(X,variance0,"alpha",0.05,"tail","both");
 if (h == 1)
  printf("Se respinge ipoteza nula H0 \n");
else
  printf("Se accepta ipoteza nula H0 \n");
endif

