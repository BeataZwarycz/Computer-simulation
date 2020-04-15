function y = metoda_AR(x, p)
    len_p = length(p);
    M = max(p);

    Y = ceil(rand*len_p);
    U = rand;

    while U > p(Y)/M
        Y = ceil(rand*len_p);
        U = rand;
    end

    y = x(Y);
end

