clear one
clear two
clear three
clear four
clear five
k = 3;
data = iris;
[idx, C] = kmeans(data, k);
counter = ones(5,1);
for i = 1:length(data)
    if idx(i) == 1
        one(counter(1), 1:3) = data(i,1:3);
        counter(1) = counter(1)+1;
    end
    if idx(i) == 2
        two(counter(2), 1:3) = data(i,1:3);
        counter(2) = counter(2)+1;
    end
    if idx(i) == 3
        three(counter(3), 1:3) = data(i,1:3);
        counter(3) = counter(3)+1;
    end
    if idx(i) == 4
        four(counter(4), 1:3) = data(i,1:3);
        counter(4) = counter(4)+1;
    end
    if idx(i) == 5
        five(counter(5), 1:3) = data(i,1:3);
        counter(5) = counter(5)+1;
    end
end

%%
scatter3(one(:,1),one(:,2),one(:,3),'filled','r');
hold on
scatter3(two(:,1),two(:,2),two(:,3),'filled','g');
scatter3(three(:,1),three(:,2),three(:,3),'filled','b');
%scatter3(four(:,1),four(:,2),four(:,3),'filled','c');
%scatter3(five(:,1),five(:,2),five(:,3),'filled','m');
hold off
