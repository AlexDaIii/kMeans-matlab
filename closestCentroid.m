function [ cenIdx ] = closestCentroid( centroids, point )
%CLOSESTCENTROID Summary of this function goes here
%   param:
%   centroids - the centroids, a m * n matrix of n m dimensional vectors
%   point - a m dimensional vector
%   return:
%   cenIdx - the jth column that tells the closest centroid

err = zeros(size(centroids, 2), 1);
cenIdx = 1;
for i = 1:size(centroids,2)
    err(i) = EuclideanDistance(centroids(:,i),point);
    if err(i) < err(cenIdx)
        cenIdx = i;
    end
end

end

