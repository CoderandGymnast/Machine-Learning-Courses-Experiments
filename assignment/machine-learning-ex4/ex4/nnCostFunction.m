function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
         
% You need to return the following variables correctly 

J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m
%

% I. Hard-coded:
num_layer=3;
thetas={Theta1,Theta2}; % Cell array.
theta_grads={Theta1_grad,Theta2_grad};

% II. Compute hypothesises: One-vs-all; Feedforward (not Forward propagation - Chain rules).
A=X; % Activation values initialization.

for l=2:num_layer
  A=[ones(m,1) A]; % Add bias.
  Z=A*cell2mat(thetas(l-1))';
  A=sigmoid(Z);
endfor

% III. One-hot encoding for labels:
Y=zeros(m,num_labels);
for i=1:m
  Y(i,y(i))=1;
endfor

% IV. Compute cost:
J = (1/m)*sum((-Y.*log(A)-(1-Y).*log(1-A))(:));

% V. Compute cost with regularization: Ignore bias.
J+=(lambda/(2*m))*(sum(Theta1(:,2:end)(:).^2) + sum(Theta2(:,2:end)(:).^2));

% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.
%


for i=1:m
  
  % I. Compute activations:
  A={[1; X(i,:)']};

	
  
	Z={};
  for l=2:num_layer
    Ap=cell2mat(A(l-1));
    Zc=cell2mat(thetas(l-1))*Ap;
    Z(l)=Zc;
    Ac=sigmoid(Zc);
    if l!=num_layer
      A(l)=[1; Ac];
    else
      A(l)=[Ac];
    endif
  endfor
  
  delta={};
  delta(num_layer)=cell2mat(A(num_layer))-Y(i,:)';
  
  for l=num_layer-1:-1:2
    delta(l)=cell2mat(thetas(l))(:,2:end)'*cell2mat(delta(l+1)).*sigmoidGradient(cell2mat(Z(l)));
  endfor

  for l=1:num_layer-1
    theta_grads(l)= cell2mat(theta_grads(l))+(1/m)*cell2mat(delta(l+1))*cell2mat(A(l))';
  endfor  
  
endfor

grad=[];
for l=1:num_layer-1
  grad=[grad ; cell2mat(theta_grads(l))(:)];
endfor

% [NOTE]: 
% 1. Saving Z(3) is redundant.
% 2. Bias node does not change.

% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%

for l=1:num_layer-1
    t = cell2mat(theta_grads(l));
    t(:,2:end) = t(:,2:end) + (lambda/m)*cell2mat(thetas(l))(:,2:end);
    theta_grads(l)=t;
endfor

size(cell2mat(theta_grads(1)))

size(cell2mat(theta_grads(2)))

grad=[];
for l=1:num_layer-1
  grad=[grad ; cell2mat(theta_grads(l))(:)];
endfor















% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
% grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
