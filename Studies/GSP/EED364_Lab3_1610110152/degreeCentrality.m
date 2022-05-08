function [node_rank_pair,deg] = degreeCentrality(A)
    deg = []; % returns degree of each node
    Rank = []; % returns rank of each node
    for i = 1:length(A)
        dc = 0; %for each node in A, initialixe its degree centrality
        for j = 1:length(A)
            if A(i,j) == 1
                dc = dc + 1; % if a node is connected to another node
            end% increment its degree centrality by 1
        end
        deg = [deg dc]; 
    end
    nodes = (0:length(A)-1).'; % List of nodes
    pair = [nodes deg.']; %pair of nodes with their respective degree centrality
    node_rank_pair = sortRank(pair); %ranking nodes acc to their dc
end