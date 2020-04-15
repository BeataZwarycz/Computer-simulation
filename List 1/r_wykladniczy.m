function X=r_wykladniczy(lambda,N)
    % Funkcja zwraca wektor losowy X o rozkładzie wykładniczym z parametrem
    % lambda, długości N
    X = rand(N,1);
    X = -log(X)/lambda;
end