function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

%declare necessary vars
summer = zeros(1,n);

%this var defines training examples assigned to specific centroid
totoalCentroid = 0;

%loop over all centroids
for i = 1:1:K
  %loop through all training examples
  for j=1:1:m
    %get the training example whose centroid matches i
    if (i == idx(j))
        summer = summer + X(j,:);
        totoalCentroid = totoalCentroid + 1;
    end
  end
  
  %compute means
  centroids(i,:) = (1 / totoalCentroid) * (summer); 
  
  %reset summer and totalCentroid
  summer = zeros(1,n);
  totoalCentroid = 0;
end
% =============================================================
end

