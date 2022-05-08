function plot2DQuiverGraph(A,ran)

figure;
plot(ran(:,1),ran(:,2),'O');
edge = [];
for k = 1: length(A)
    row = A(k,:);
    for i = 1:length(row)
        if A(k,i) ~= 0 % if edge exists between kth and ith row
            x = [ran(k,1) ran(i,1)]; %Storing x and y coordinates
            y = [ran(k,2) ran(i,2)];
            k1 = int2str(k-1);
            edge = [edge; ran(k,:) ran(i,:)]; %Storing edge between k and i node
            text(ran(k,1),ran(k,2),k1);
            dp=[edge(k,3), edge(k,4)]-[edge(k,1), edge(k,2)];
            hold on;
            quiver(edge(k,1),edge(k,2),dp(1),dp(2),0);%Using quiver to draw directed lines
        end
    end
end
end

