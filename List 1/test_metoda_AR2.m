N = 10000;
% przykladowe x i p
x = [1, 3, 4, 7];
p = [2/6, 1/4, 1/6, 1/4];

X = metoda_AR2(x, p, N);

% wartosc oczekiwana teoretyczna
exptected_value = x*p'; 
% wartosc oczekiwana próbkowa
exp_exptected_value = mean(X);
fprintf('Wartosc oczekiwana z proby: %.4f\nWartosc oczekiwana teoretyczna: %.4f\n', exp_exptected_value, exptected_value);

% wariancja teoretyczna 
variance = x.^2*p' - exptected_value^2;
% wariancja próbkowa
exp_variance = var(X);
fprintf('Wariancja z proby: %.4f\nWariancja teoretyczna: %.4f\n', exp_variance, variance);

% porownanie dystrybuant
y_data = cumsum(p);
stairs([min(x)-1 x], [0 y_data]); % dystrybuanta teoretyczna
hold on;
ecdf(X) % dystrybuanta empiryczna
legend('dystr. teoretyczna', 'dystr. empiryczna');


% porownanie rozk³adu i histogramu
figure
histogram(X, 'Normalization', 'probability')
hold on;
plot(x,p,'x')
legend('histogram',  'rozklad teoretyczny');






