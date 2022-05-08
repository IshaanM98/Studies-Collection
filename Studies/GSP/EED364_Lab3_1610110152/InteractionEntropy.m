function [node_rank_pair, IFE_Rank] = InteractionEntropy(A)
    IFE_Rank = [];
    pair = [];
    for i = 1:length(A)
        sum = 0;
        sumNW = 0; %To store weight between ith and jth neighbours
        for j = 1:length(A)
            sumNW = sumNW + A(i,j); % sum of weights between ith and jth node in ith row 
        end
        for k = 1:length(A)
            if A(i,k) ~= 0 %if kth node in ith row is having an edge 
                Cij = A(i,k); %Take that kth node and store in Cij
                sum = sum + (Cij/sumNW)*log(Cij/sumNW); %Calculate Interaction entropy for ith node
            end
        end
        IFE_Rank = [IFE_Rank -sum]; %store in IFE of ith node in IFE_rank
        pair = [pair; i-1, IFE_Rank(i)]; % Create pair of ith node and its IFE
    end
    node_rank_pair = sortRank(pair); %sort the pair to rank
end

