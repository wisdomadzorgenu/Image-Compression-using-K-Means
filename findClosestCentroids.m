function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

%declare an error array 
error = zeros(K,1);

%find the size of the training set
m = size(X,1);

% fprintf('\n The size of X is :'); size(X)
% fprintf('\n The size of centroids is :'); size(centroids)

%go over every training example
for i = 1:1:m
 %find the centroid closest to the current training example
 % find the centroid that gives the minimun error
 % assign the index of that centroid to c(i)
  
  %optimisation; loop through all centroid
  for j=1:K
   %find error
   error(j) = sum((X(i,:) - centroids(j,:)).^2);
  end
  
  %find the centroid that gives minimum error and assign it to idx
  [~,index] = min(error);
  
  idx(i) = index;
  
end
% =============================================================

end

