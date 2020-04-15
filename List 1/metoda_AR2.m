function y = metoda_AR2(x, p, N)
    y = zeros(1, N);
    len_p = length(p);
    M = max(p);
    
    for i=1:N
       Y = ceil(rand*len_p);
       U = rand;

    while U > p(Y)/M
       Y = ceil(rand*len_p);
       U = rand;
    end

    y(i) = x(Y);    
    
    end
end

