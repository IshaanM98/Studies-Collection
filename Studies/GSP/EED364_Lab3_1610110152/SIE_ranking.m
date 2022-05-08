function [node_rank_pair, Ii_rank] = SIE_ranking(A)
    [rank, degree] = degreeCentrality(A); %finding degree of each node
    Ii_rank = [];
    pair = [];
    for i = 1:length(A)
        Ii = 0;
        sumDegNeigh = 0; %num of neighnours
        for j = 1:length(A)
            if A(i,j) == 1 %if neighbour exists, num of neighbours increment by degree of that neighbour
                sumDegNeigh = sumDegNeigh + degree(j);
            end
        end
        Ii = Ii + degree(i)/(sumDegNeigh + degree(i))*log(degree(i)/(sumDegNeigh + degree(i))); %calculating SIE
        Ii_rank = [Ii_rank -Ii]; %Storing SIE of respective node
        pair = [pair; i-1 Ii_rank(i)];%pair of nodes with their respective SIE
    end
    node_rank_pair = sortRank(pair);%ranking nodes acc to their SIE
end

