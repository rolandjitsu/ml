function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%


% Compute the J of a particular choice of theta

% Compute cost J
% X = m x n matrix
% theta = n x 1 column vector
hypothesis = sigmoid(X * theta);

% J = real number 
J = (-1 / m) * sum(y .* log(hypothesis) + (1 - y) .* log(1 - hypothesis))


% Compute the partial derivatives and set gradiant to the partial
% derivatives of the cost w.r.t. each parameter in theta.

% Compute the gradient
for i = 1:m,
	% hypothesis = m x 1 column vector
	% y = m x 1 column vector
	% X = m x n matrix
	grad = grad + (hypothesis(i) - y(i)) * X(i, :)';
end;

grad = (1 / m) * grad;


% =============================================================

end
