function y=invert_distribution(x,p)
    U = rand(1,1);
    % i - next points vector
    i = sum(cumsum(p)<U) + 1;
    y = x(i);
end