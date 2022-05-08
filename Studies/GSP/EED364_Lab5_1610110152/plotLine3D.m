function plotLine3D(A,val)
    cord = [];
    x = 1;
    y = 1;
    z = 1;
    for i=1:length(A)
        cord = [cord; x y z];
        x = x + 1; 
    end
    plot3(cord(:,1),cord(:,2),cord(:,3),'O');
    for k = 1:length(A)
        for i = 1:length(A)
            if A(k,i) ~= 0
                x = [cord(k,1) cord(i,1)];
                y = [cord(k,2) cord(i,2)];
                z = [cord(k,3) cord(i,3)];
                k1 = int2str(k-1);
                text(cord(k,1),cord(k,2),cord(k,3),k1);
                line(x,y,z);
            end
        end
        x1 = [cord(k,1) cord(k,1)];
        y1 = [cord(k,2) cord(k,2)];
        z1 = [cord(k,3) (cord(k,3) + val(k))];
        line(x1,y1,z1);
    end
end

