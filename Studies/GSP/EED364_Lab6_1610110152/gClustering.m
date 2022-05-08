function class_OP = gClustering(A,cord,U,vecIDX)

vector = U(:,vecIDX);
class_OP = [];
for j = 1:length(vector)
    hold on
    if vector(j) > 0
        plot3(cord(j,1),cord(j,2),cord(j,3),'marker','O','color','r');
        class_OP = [class_OP; 1];
    else
        plot3(cord(j,1),cord(j,2),cord(j,3),'marker','O','color','g');
        class_OP = [class_OP; 0];
    end
    hold off
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

