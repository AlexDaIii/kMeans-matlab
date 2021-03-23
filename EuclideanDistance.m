function [ distance ] = EuclideanDistance(x, y)
%finds the euclidean distance between 2 vectors
%inputs: x and y are 3x1 vectors
%output: a number representing the distance between 2 points

%find the squared difference of each of the elements
pyth = (x - y).^2;

%add the elements to each other
total = sum(pyth);

%take the squareroot of the sum to be the distance
distance = sqrt(total);

end