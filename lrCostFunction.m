function [J, grad] = lrCostFunction(theta, X, y, lambda)
 
m = length(y); % number of training examples

 J = 0;
grad = zeros(size(theta));

 

h_theta = sigmoid(X * theta);

% Cost

J = (1/m) * (((-1 * y') * log(h_theta)) - ((1-y') * log(1-h_theta))) + (lambda/(2*m)) * (sum(theta(2:end) .^ 2));

temp = theta;
temp(1) = 0;

grad = ((1 / m) * X' * (h_theta - y)) + (lambda / m) * temp;
grad = grad(:);
 

end