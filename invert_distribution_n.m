function y=invert_distribution_n(x, p, N)
    U = rand(N,1);
    U = repmat(U, 1, N);
    
    cumsum_pi = cumsum(p);
    cumsum_pi2 = cumsum(p(1:length(p)-1));
    % i - next points vector
    i = sum(cumsum(p)<U) + 1;
    y = x(i);
    
    % good:
    n = length(x);
    F = cumsum(p);
    A = repmat(F, N, 1);
    U = rand(N, 1);
    B = repmat(U, 1, n);
    i = sum(B > A, 2) + 1;  % 2 to sum by matrix's row
    y = x(i);
    
end