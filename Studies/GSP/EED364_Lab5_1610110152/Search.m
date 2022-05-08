function [op,visited] = Search(current,visited)
    if isempty(visited)
        visited = [visited; current];
        op = 0;
    else
        for i=1:size(visited,1)
            if (visited(i,1) == current(1,1) && visited(i,2) == current(1,2)) ||(visited(i,2) == current(1,1) && visited(i,1) == current(1,2))
                op = 1;
                return
            end
        end
        visited = [visited; current];
        op = 0;
    end
end

