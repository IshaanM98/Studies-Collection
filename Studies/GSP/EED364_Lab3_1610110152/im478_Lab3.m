%% Name: Ishaan Malhotra
%% Roll no. : 1610110152
%% Instructer: Prof. Vijay Chakka
%% Lab 3
%% Aim: Plotting data in graphs and few properties
%%
clc
clear all
close all
%% Question 1
bipartite = [[0 0 1 1 1];[0 0 1 1 1];[1 1 0 0 0 ];[1 1 0 0 0];[1 1 0 0 0]];% Creating bipartite graph

ran2 = rand(length(bipartite),2); %computing 2D random points 
ran2_3D = rand(length(bipartite),3); %computing 3D random points

plot2DGraph(bipartite,ran2); %plotting 2D bipartite graph
title('2D Bipartite Graph'); 
plot3Dv2(bipartite,ran2_3D); %plotting 2D bipartite graph
title('3D Bipartite Graph');
[rank,degree] = degreeCentrality(bipartite); %Computing degree centrality of each node and ranking them

%% Question 2
[SIE_rank, SIE_score]= SIE_ranking(bipartite); %Computing Structural Information entropy of each node and ranking them

%% Question 3
A = [[0 0 2 3 5]; [0 0 3 2 2]; [2 3 0 0 0]; [2 4 0 0 0]; [2 4 0 0 0]]; % Creating directed and weighted bipartite graph
C = [[1 2]; [1 4]; [4 2]; [4 3]; [4 5]];
plot2DQuiverGraph(A,C) % Plotting graph
title('2D directed and weighted graph')
%% Question 4
[IFE_rank, IFE_score] = InteractionEntropy(A); %Computing Interaction Frequency entropy of each node and ranking them

Total = IFE_score + SIE_score; % adding both Structural and interaction entropies
nodes = (0:length(A)-1).'; % List of nodes
pair = [nodes Total.']; % Pairing nodes with their respective Total = IFE_score + SIE_score
node_rank = sortRank(pair); %Ranking them
%%
% <include>degreeCentrality.m</include>
%%
% <include>SIE_ranking.m</include>
%%
% <include>InteractionEntropy.m</include>
%%
% <include>sortRank.m</include>
%%
% <include>plot2DQuiverGraph.m</include>