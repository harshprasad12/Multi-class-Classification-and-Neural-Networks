function p = predictOneVsAll(all_theta, X)

m = size(X, 1);
num_labels = size(all_theta, 1); % 10
p = zeros(size(X, 1), 1); % 5000 * 1
X = [ones(m, 1) X]; % 5000 * 401
predict = sigmoid(X*all_theta'); % 5000 * 401 by 401*10
[~, p] = max(predict, [], 2);
end