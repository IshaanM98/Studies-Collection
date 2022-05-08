function [E,F] = gClustering2D(A,cord,U,vecIDX)
E = [];
F = [];
vector = U(:,vecIDX);

for j = 1:length(vector)
    hold on
    if vector(j) > 0
        plot(cord(j,1),cord(j,2),'marker','O','color','r')               
    else
        plot(cord(j,1),cord(j,2),'marker','O','color','g');            
    end
    hold off
end

for k = 1: length(A)
    for i = 1:length(A)
        if A(k,i) ~= 0
            x = [cord(k,1) cord(i,1)];
            y = [cord(k,2) cord(i,2)];
            k1 = int2str(k);
            text(cord(k,1),cord(k,2),k1)
            line(x,y);
        end
    end
end

end