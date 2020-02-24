function [all_theta] = oneVsAll(X, y, num_labels, lambda)
 
m = size(X, 1);
n = size(X, 2);

 all_theta = zeros(num_labels, n + 1); % 10 * 401

 X = [ones(m, 1) X];

 
     
    for c = 1:num_labels 
        all_theta(c,:) = fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)), initial_theta, options);
         
    end
end