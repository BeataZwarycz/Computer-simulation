function m=coin(n)
    % m is throw a coin: n-realizations
    m = rand(1,n);
    m(m>0.5) = 1;
    m(m<=0.5) = 0;
end