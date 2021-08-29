pkg load statistics

#1
X1 = [4.95, 5.24, 5.13, 5.07, 4.83, 5.04, 4.92, 5.06, 5.15, 5.23, 5.16, 5.28];
X2 = [5.32, 5.13, 5.41, 5.13, 4.92, 4.83, 5.68, 5.56, 5.72, 4.83];

#a)
alfa = 0.02;

n1 = length(X1);
n2 = length(X2);


falfa2 = finv(alfa / 2, n1 - 1, n2 - 1);
f1alfa2 = finv(1 - alfa / 2, n1 - 1, n2 - 1);


[h, P, ci, stats] = vartest2(X1, X2, "alpha", 0.02, "tail", "both");
f0 = stats.fstat;


printf("U=(-inf, %d] U [%d, +inf)\n", falfa2, f1alfa2);

if (h == 1)
    printf("\nSe respinge ipoteza nula H0 \n");
    printf("Valoarea f0 este %d \n", f0);
else
  if (f0 > falfa2 && f0 < f1alfa2)
      printf("\nSe accepta ipoteza nula H0 \n");
  else
      printf("\nSe respinge ipoteza nula H0. Se accepta H1. \n");
  endif
endif


#b)

[h, P, ci, stats] = ttest2(X1, X2, "alpha", 0.02, "tail", "left", "vartype", "unequal");
n = stats.df;
n = round(n);
t_alfa = tinv(alfa, n);

printf("U=(-inf, %d]\n", t_alfa);

t0 = stats.tstat;

printf("t0 = %d", t0);

 if (h == 1)
  printf("\nSe respinge ipoteza nula H0 \n");
  printf("Valoarea t0 este %d \n", t0);
else
  if (t0 > t_alfa)
    printf("\nSe accepta ipoteza nula H0 \n");
  else
    printf("\nSe respinge ipoteza nula H0. Se accepta H1. \n");
  endif
endif