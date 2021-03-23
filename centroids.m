function [ ac ] = centroids( a )
%CENTROIDS Summary of this function goes here
%   @param - a - a matrix of m*n vectors (n, m dimensional vectors)
%   @return - ac - the central vector

div = ones(size(a,2),1)/(size(a,2));
ac = a*div;


end

