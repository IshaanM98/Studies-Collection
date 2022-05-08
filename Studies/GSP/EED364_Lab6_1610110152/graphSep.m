function [E,F] = gClustering(A,cord,U,vecIDX)
E = [];
F = [];
vectors = [];
for i = 1:length(vecIDX)
    vectors = [vectors U(:,vecIDX(i))];
end

for i = 1:size(vectors,2)
    for j = 1:length(vectors)
        y = vectors(:,i);
        if y(j) > 0
            plot3(cord(j,1),cord(j,2),cord(j,3),'O','color','c');
            
            E = [E j];
        else
            plot3(cord(j,1),cord(j,2),cord(j,3),'O','color','g');
            
            F = [F j];
        end
    end
end

for k = 1: length(A)
    for i = 1:length(A)
        if A(k,i) ~= 0
            x = [cord(k,1) cord(i,1)];
            y = [cord(k,2) cord(i,2)];
            z = [cord(k,3) cord(i,3)];
            k1 = int2str(k);
            text(cord(k,1),cord(k,2),cord(k,3),k1)
            line(x,y,z);
        end
    end
end

end

