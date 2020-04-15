function y=cube(n)
    % throw a cube realization
    y = rand(1,n)*6;
    y = ceil(y);
    
    %Plot: histogram and distribution
    subplot(1,2,1)
    histogram(y, 'Normalization', 'probability')  %estimate
    subplot(1,2,2)
    ecdf(y) % empirical distribution - estimator, approximates the theoretical values ​​of the cumulative distribution function
end
