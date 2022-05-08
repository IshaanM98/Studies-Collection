function plot2DGraph(A,ran)
figure;
plot(ran(:,1),ran(:,2),'O');
for k = 1: length(A)
    row = A(k,:);
    for i = 1:length(row)
        if A(k,i) ~= 0
            x = [ran(k,1) ran(i,1)];
            y = [ran(k,2) ran(i,2)];
            k1 = int2str(k-1);
            text(ran(k,1),ran(k,2),k1);
            line(x,y)
        end
    end
end
end
