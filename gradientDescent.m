function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

% display("x: " + X + "  y: " + y);
for iter = 1:1500
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
        %iter
        xSize = size(X);
    numColumns = xSize(1,2);
    newTheta = zeros(size(theta));
    for feature = 1:numColumns
        sum = 0;
        hypo = X*theta;
        for i=1:m
          sum = sum + ((hypo(i)-y(i)) * X(i,feature));
        end
        newTheta(feature) = theta(feature) - ((alpha/m)*sum);

    end
    theta = newTheta;
    %theta
    %J_history(iter) = computeCost(X, y, theta);
       
end
J_history;
end
