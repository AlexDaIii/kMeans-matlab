line(:,1:2) = [0 0 0; 1 1.25 1.5]';
line(:,3:4) = [2 2 2; 3 3.25 3.5]';
line(:,5:6) = [4 4 4; 5 5.25 5.5]';
cen(:,1) = centroids(line(:,1:2));
cen(:,2) = centroids(line(:,3:4));
cen(:,3) = centroids(line(:,5:6));

Dist = zeros(size(line,2),1);
for i = 1:3
    Dist(2*i-1) = EuclideanDistance(line(:,2*i-1), cen(:,i));
    Dist(2*i) = EuclideanDistance(line(:,2*i), cen(:,i));
end
one = ones(1,size(Dist,1));
inertia = one*Dist;

%% closest cluster
cen(:,1) = line(:,2);
cen(:,2) = line(:,5);
cen(:,3) = line(:,4);

closest = zeros(length(cen),1);

for i = 1:6
    closest(i) = closestCentroid(cen, line(:,i)) - 1;
end