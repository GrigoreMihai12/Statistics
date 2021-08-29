pkg load statistics
#1
N = input('Introduceti numarul de numere N=')
miu = input('Introduceti miu pentru legea normala:')
sigma = input('Introduceti sigma pentru legea normala:')
%1
X = normrnd(miu,sigma,[1,N])
%2
X = sort(X)
%3
x_min = min(X)
x_max = max(X)
%4
a = 1+(10/3)*log10(N)
n = fix(a)
%5
d = (x_max - x_min) / n
%6
i = 1: n + 1
c_i(i) = x_min + (i-1)*d
%7
[f, middle] = hist(X, n);
%8
fprintf("| Nr. |    Clasa    | Frecventa absoluta | Mijlocul clasei | Frecventa relativa |\n");
fprintf("---------------------------------------------------------------------------------\n");
for i=1:n
  str1 = mat2str(i);
  str2 = mat2str(c_i(i));
  str3 = mat2str(c_i(i+1));
  str4 = mat2str(f(i));
  str5 = mat2str(middle(i));
  str6 = mat2str(N);
  if i==n
    fprintf("| %3s | [%.4s,%.4s] | %10s\t | %10.4s\t   | %6s/%.6s        |\n",str1,str2,str3,str4,str5,str4,str6);
  else
    fprintf("| %3s | [%.4s,%.4s) | %10s\t | %10.4s\t   | %6s/%.6s        |\n",str1,str2,str3,str4,str5,str4,str6);
  endif
  fprintf("---------------------------------------------------------------------------------\n");
endfor
%9
figure
hold on
hist(X, n)
hold on
plot(middle, f)
hold off
%10
fprintf("Media aritmetica e: %f\n", mean(X));
fprintf("Media geometrica e: %f\n", geomean(X));
fprintf("Media armonica e: %f\n", harmmean(X));
%11
fprintf("Mediana e: %f\n", median(X));
%12
i=find(f==max(f));
mod = middle(i);
fprintf("Modulul e: %f\n", mod);
%13
cuartile = prctile(X, [25 50 75]);
fprintf("Q1(cuartila inferioara): %f\n",cuartile(1));
fprintf("Q2=m(mediana): %.2f\n",cuartile(2));
fprintf("Q3(cuartila superioara): %f\n",cuartile(3));
%14
var_R = var(X);
std_R = std(X);
fprintf("Variatia e: %f\n", var_R);
fprintf("Abaterea standard e: %f\n", std_R);
%15
moment_R = moment(X,1);
fprintf("Momentul centrat de ordin 1 este: %f\n", moment_R);
moment_R = moment(X,2);
fprintf("Momentul centrat de ordin 2 este: %f\n", moment_R);
moment_R = moment(X,3);
fprintf("Momentul centrat de ordin 3 este: %f\n", moment_R);
moment_R = moment(X,4);
fprintf("Momentul centrat de ordin 4 este: %f\n", moment_R);