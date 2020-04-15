% X - N-realizacji zmiennej losowej o dystrybuancie F(x)=x^p, 0<x<1, p>0
p = 2;
N = 1000;
X = r_potegowy(p,N);
X = sort(X);

% Charakterystyki wygenerowanej próbki:
srednia_empiryczna = mean(X);
var_empiryczna = var(X);
F_empiryczna = ecdf(X);

srednia_teoretyczna = p/p+1;
var_teoretyczna = p/p+2 - (p/p+1)^2;
F_teoretyczna = X.^p;
f_teoretyczna = (p)*X.^(p-1);

% Wykresy gêstoœci i dystrybuanty
subplot(1,2,1)
histogram(X, 'Normalization', 'pdf')
xlabel('Wartoœci X')
ylabel('f(x)')
grid on
hold on
plot(X, f_teoretyczna, 'r')
legend('Histogram', 'Gêstoœæ teoretyczna')

subplot(1,2,2)
plot(X, F_empiryczna(1:N))
xlabel('Wartoœci X')
ylabel('F(x)')
grid on
hold on
plot(X, F_teoretyczna, 'r')
legend('Dystrybuanta empiryczna', 'Dystrybuanta teoretyczna')

disp('1. Ró¿nica miêdzy œrednimi:')
disp(abs(srednia_empiryczna - srednia_teoretyczna))
disp('2. Ró¿nica miêdzy wariancjami:')
disp(abs(var_empiryczna-var_teoretyczna))