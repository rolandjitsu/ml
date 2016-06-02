function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).


if length(z) > 1,
	% We have a vector or matrix
	% Apply the sigmoid fn to each el. of the matrix
	% See http://stackoverflow.com/questions/11386854/gnu-octave-method-to-operate-on-each-item-in-a-matrix-octave-arrayfun-ex
	% for `arrayfun`.
	g = arrayfun(@(x) 1 / (1 + e ^ (-x)), z);
else
	% Compute the sigmoid fn for a single value
	g = 1 / (1 + e ^ (-z));
end;

% Alternatively we can use the bellow impl.
g = 1 ./ (1 + e .^ (-z));


% =============================================================

end
