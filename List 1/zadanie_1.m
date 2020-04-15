lambda = 5;
N = 1000;
% posortowany wektor N-realizacji zmiennej losowej z rozk�adu wyk�adniczego
X = r_wykladniczy(lambda, N);
X = sort(X);

% Charakterystyki wygenerowanej pr�bki:
srednia_empiryczna = mean(X);
var_empiryczna = var(X);
F_empiryczna = expcdf(X, srednia_empiryczna); 
f_empiryczna = exppdf(X, srednia_empiryczna);

srednia_teoretyczna = 1/lambda;
var_teoretyczna = lambda^(-2);
F_teoretyczna = 1 - exp(-lambda*X);
f_teoretyczna = lambda*exp(-lambda*X);

% Wykresy g�sto�ci i dystrybuanty
subplot(1,2,1)
%histogram(X,N) %- b��dne!!!
histogram(X, 'Normalization', 'pdf') % poprawny histogram dla rozk�adu ci�g�ego
xlabel('Warto�ci X')
ylabel('f(x)')
grid on
hold on
plot(X, f_teoretyczna, 'r')
legend('Histogram', 'G�sto�� teoretyczna')

subplot(1,2,2)
plot(X, F_empiryczna)
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