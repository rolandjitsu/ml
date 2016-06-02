function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


% Cost Function

hypothesis = X * theta; % Keep in mind that this can also be written as: `theta' * X`
squared_errors = (hypothesis - y) .^ 2;

cost = 1 / (2 * m) * sum(squared_errors);
cost_regularization = lambda / (2 * m) * sum(theta(2:end) .^ 2);

J = cost + cost_regularization;


% Gradient Descent

grad = 1 / m * (X' * (hypothesis - y));
grad_regularization = (lambda / m) * theta;

grad = grad + grad_regularization;
grad(1) -= (lambda / m) * theta(1);


% =========================================================================

grad = grad(:);

end
