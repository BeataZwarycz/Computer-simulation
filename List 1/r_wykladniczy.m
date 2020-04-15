function X=r_wykladniczy(lambda,N)
    % Funkcja zwraca wektor losowy X o rozk�adzie wyk�adniczym z parametrem
    % lambda, d�ugo�ci N
    X = rand(N,1);
    X = -log(X)/lambda;
end