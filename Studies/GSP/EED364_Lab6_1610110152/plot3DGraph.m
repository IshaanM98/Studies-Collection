function plot3DGraph(A,ran)
plot3(ran(:,1),ran(:,2),ran(:,3),'O');
for k = 1: length(A)
    for i = 1:length(A)
        if A(k,i) ~= 0
            x = [ran(k,1) ran(i,1)];
            y = [ran(k,2) ran(i,2)];
            z = [ran(k,3) ran(i,3)];
            k1 = int2str(k);
            text(ran(k,1),ran(k,2),ran(k,3),k1)
            line(x,y,z);
        end
    end
end
end

