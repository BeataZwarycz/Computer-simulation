lambda = 5;
N = 1000;
% posortowany wektor N-realizacji zmiennej losowej z rozk³adu wyk³adniczego
X = r_wykladniczy(lambda, N);
X = sort(X);

% Charakterystyki wygenerowanej próbki:
srednia_empiryczna = mean(X);
var_empiryczna = var(X);
F_empiryczna = expcdf(X, srednia_empiryczna); 
f_empiryczna = exppdf(X, srednia_empiryczna);

srednia_teoretyczna = 1/lambda;
var_teoretyczna = lambda^(-2);
F_teoretyczna = 1 - exp(-lambda*X);
f_teoretyczna = lambda*exp(-lambda*X);

% Wykresy gêstoœci i dystrybuanty
subplot(1,2,1)
%histogram(X,N) %- b³êdne!!!
histogram(X, 'Normalization', 'pdf') % poprawny histogram dla rozk³adu ci¹g³ego
xlabel('Wartoœci X')
ylabel('f(x)')
grid on
hold on
plot(X, f_teoretyczna, 'r')
legend('Histogram', 'Gêstoœæ teoretyczna')

subplot(1,2,2)
plot(X, F_empiryczna)
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