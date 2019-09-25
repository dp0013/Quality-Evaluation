function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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

hyp = 1 ./ (1 + e .^ -(X*theta));  % hypothesis

% ========== REGULARIZED COST =============== 
% define additonal part for regularized cost function 
for i = 1,
  theta1 = theta(1,1); % only take first theta
  thetaSqr1 = theta1.^2;  % square theta1
  thetaSqrSum1 = sum(thetaSqr1);  % sum thetaSqr1 
  reg_cost1 = (lambda/(2*m)) * thetaSqrSum1;  % calculate regularized cost part
  
  J = -(1/m * ((y' * log(hyp)) + ((1-y)' * log(1 - hyp)))) + reg_cost1;  % regularized cost function
endfor

for i = 2:size(theta,1),
  theta2 = theta;
  theta2(1,:) = [];  % remove first theta
  thetaSqr2 = theta2.^2;  % square theta2
  thetaSqrSum2 = sum(thetaSqr2);  % sum thetaSqr2 
  reg_cost2 = (lambda/(2*m)) * thetaSqrSum2;  % calculate regularized cost part
  
  J = -(1/m * ((y' * log(hyp)) + ((1-y)' * log(1 - hyp)))) + reg_cost2;  % regularized cost function
endfor
 

% ========== REGULARIZED GRADIENT =============== 
% define additonal part for regularized gradient 
for i = 1,
  grad(i,:) = (1/m * ((hyp - y)' * X(:,i))');  % only for 
endfor

for i = 2:size(theta,1),  % for every theta starting at theta_1
  grad(i,:) = (1/m * ((hyp - y)' * X(:,i))') + ((lambda/m) * theta(i,1));  
endfor

 




% =============================================================

end
