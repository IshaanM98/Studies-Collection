function S = spectralSimilarity(U,n)
S = [];
U = U(:,2:length(U));
visited = [];
for i = 1:length(U)
    Qi = U(i,1:n);
    for j = 1: length(U)
        current = [i j];
        [SearchResult,visited_op] = Search(current,visited);
        visited = visited_op;
        if i ~= j && SearchResult == 0
            Qj = U(j,1:n);
            Dij = sqrt((Qi - Qj)*(Qi - Qj).'); 
            S = [S; Dij];
        end
    end
end
end

