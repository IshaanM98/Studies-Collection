function node_rank = sortRank(pair)
    for i = 1:length(pair)-1
        for j = i+1:length(pair)%Use bubble sort to sort according to metric score
            if pair(i,2) < pair(j,2)% If ith metric is less than jth metric swap using temp
                                    % Sort in descending order 
                temp1 = pair(j,1); 
                pair(j,1) = pair(i,1);
                pair(i,1) = temp1;
                
                temp2 = pair(j,2);
                pair(j,2) = pair(i,2);
                pair(i,2) = temp2;
            end
        end
    end
    %rank = pair(:,2); %store sorted IFE values in to rank
    Rank = [1]; %First rank will be 1
        
    for k=2:length(pair)
        currentRank = Rank(k-1);%Current rank is extracted from Rank
        if pair(k-1,2) == pair(k,2)% if next node has same metric score
            Rank = [Rank; currentRank];% Give same rank to next node
        elseif pair(k-1,2) > pair(k,2) % if metric of current node is less than that of 
            Rank = [Rank; currentRank+1];%prev node, increment the rank by 1 and store it
        end
    end
    node_rank = [pair(:,1) Rank]; % make sorted node - rank pair 
end

