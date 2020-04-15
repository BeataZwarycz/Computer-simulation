% X - N-realizacji zmiennej losowej o dystrybuancie F(x)=x^p, 0<x<1, p>0
p = 2;
N = 1000;
X = r_potegowy(p,N);
X = sort(X);

% Charakterystyki wygenerowanej pr�bki:
srednia_empiryczna = mean(X);
var_empiryczna = var(X);
F_empiryczna = ecdf(X);

srednia_teoretyczna = p/p+1;
var_teoretyczna = p/p+2 - (p/p+1)^2;
F_teoretyczna = X.^p;
f_teoretyczna = (p)*X.^(p-1);

% Wykresy g�sto�ci i dystrybuanty
subplot(1,2,1)
histogram(X, 'Normalization', 'pdf')
xlabel('Warto�ci X')
ylabel('f(x)')
grid on
hold on
plot(X, f_teoretyczna, 'r')
legend('Histogram', 'G�sto�� teoretyczna')

subplot(1,2,2)
plot(X, F_empiryczna(1:N))
xlabel('Warto�ci X')
ylabel('F(x)')
grid on
hold on
plot(X, F_teoretyczna, 'r')
legend('Dystrybuanta empiryczna', 'Dystrybuanta teoretyczna')

disp('1. R�nica mi�dzy �rednimi:')
disp(abs(srednia_empiryczna - srednia_teoretyczna))
disp('2. R�nica mi�dzy wariancjami:')
disp(abs(var_empiryczna-var_teoretyczna))