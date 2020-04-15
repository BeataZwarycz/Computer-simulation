function X=r_wykladniczy(lambda,N)
    % Funkcja zwraca wektor losowy X o rozk³adzie wyk³adniczym z parametrem
    % lambda, d³ugoœci N
    X = rand(N,1);
    X = -log(X)/lambda;
end