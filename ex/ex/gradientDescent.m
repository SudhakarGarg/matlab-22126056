function theta = gradientDescent(X, y, theta, alpha, iterations)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha
m=length(y);
for i=1:iterations
    h=X*theta;
    gradient=(1/m)*(X'*(h-y));
    theta=theta-alpha*gradient;
    if mod(i,100)==0
        J=computeCost(X,y,theta);
        fprintf('Cost after iteration %d :%f \n ',i ,J);
    end 
end 
end
    

    