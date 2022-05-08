%% Name: Ishaan Malhotra
%% Roll no. : 1610110152
%% Instructer: Prof. Vijay Chakka
%% Lab 1
%% Aim: To understand the basic graphs and plotting techniques
%%

clc
clear all
close all

%% Part 1

A = [[0 0 1 1];[0 0 1 1];[1 1 0 1];[1 1 1 0]]
ran2D = rand(length(A),2)

plot2DGraph(A,ran2D)
title('2D Graph')

%% Part 2 

complete = [[0 1 1 1];[1 0 1 1];[1 1 0 1];[1 1 1 0]]
ran1 = rand(length(complete),2)

bipartite = [[0 0 0 1 1 1 1];[0 0 0 1 1 1 1];[0 0 0 1 1 1 1];[1 1 1 0 0 0 0];[1 1 1 0 0 0 0];[1 1 1 0 0 0 0];[1 1 1 0 0 0 0]]
ran2 = rand(length(bipartite),2)

regular = [[0 1 1 1];[1 0 1 1];[1 1 0 1];[1 1 1 0]]
ran3 = rand(length(regular),2)

star = [[0 1 1 1];[1 0 0 0];[1 0 0 0];[1 0 0 0]]
ran4 = rand(length(star),2)

circular = [[0 1 0 1];[1 0 1 0];[0 1 0 1];[0 0 1 1]]
ran5 = rand(length(circular),2)

line = [[0 1 0 0];[1 0 1 0];[0 1 0 1];[0 0 1 0]]
ran6 = rand(length(line),2)

plot2DGraph(complete,ran1)
title('Complete Graph')

plot2DGraph(bipartite,ran2)
title('Bipartite Graph')

plot2DGraph(regular,ran3)
title('Regular Graph')

plot2DGraph(star,ran4)
title('Star Graph')

plot2DGraph(circular,ran5)
title('Circular Graph')

plot2DGraph(line,ran6)
title('Line Graph')

% Verification using gplot()
figure
gplot(complete,ran1)
title('Complete Graph using gplot')

figure
gplot(bipartite,ran2)
title('Bipartite Graph using gplot')

figure
gplot(regular,ran3)
title('Regular Graph using gplot')

figure
gplot(star,ran4)
title('Star Graph using gplot')

figure
gplot(circular,ran5)
title('Circular Graph using gplot')

figure
gplot(line,ran6)
title('Line Graph using gplot')

%% Part 3 

A = [[0 0 1 1];[0 0 1 1];[1 1 0 1];[1 1 1 0]]
ran3D = rand(length(A),3)

plot3DGraph(A,ran3D)
title('3D Graph')

%% Part 4

[A,ran2D] = bucky

plot2DGraph(A,ran2D)
title('2D Bucky Graph')

[A,ran3D] = bucky

plot3DGraph(A,ran3D)
title('3D Bucky Graph')

%% Part 5

A = randAdjMatrix(5)
ran2D = rand(length(A),2)
ran3D = rand(length(A),3)

plot2DGraph(A,ran2D)
title('2D Random Graph')

plot3DGraph(A,ran3D)
title('3D Random Graph')

%% Part 6

A = [[0 1 1 1];[1 0 1 1];[1 1 0 1];[1 1 1 0]]

%Degree Matrix
degree = degreeMat(A)

% Laplacian Matrix
laplacian = laplacianMat(A)

% Normalized Laplacian Matrix
normLap = normLapMat(A)

% Random Walk Laplacian Matrix
randWalkLapMat = rwLapMat(A)

%% Functions

% To find degree matrix

%function D = degreeMat(A)
%D = []
%Creating degree matrix
%for i = 1:length(A)
%    D(i,i) = sum(A(i,:))
%end
%end

% To find laplacian matrix

%function L = laplacianMat(A)
%D = []
%Creating diagonal matrix
%for i = 1:length(A)
%    D(i,i) = sum(A(i,:))
%end
%Creating laplacian matrix
%L = D-A
%end

% To find normalized laplacian matrix

%function Ln = normLapMat(A)
%D = []
%Creating degree matrix
%for i = 1:length(A)
%    D(i,i) = sum(A(i,:))
%end
%Creating laplacian matrix
%L = D-A
%Creating normalised laplacian matrix
%Ln = (D^(-1/2))*L*(D^(-1/2))
%end

% To find laplacian random walk

%function Lrw = rwLapMat(A)
%D = []
%Creating Degree matrix
%for i = 1:length(A)
%    D(i,i) = sum(A(i,:))
%end
%Creating laplacian matrix
%L = D-A
%Creating random walk laplacian matrix
%Lrw = inv(D)*L
%end

% To create a random NxN adjacency matrix

%function A = randAdjMatrix(N)
%A = []
% Creating upper triangular random matrix
%for i=N:-1:1
%    B = [zeros(1,N-i) round(rand(1,i))]  
%    A = [A;B]
%end
%B = A.'  % Taking transpose of upper triangular matrix 
%A = A - diag(diag(A)) %Making diagonal 0
%A = A + B %Adding transpose to the original triangular matrix
%A = A - diag(diag(A)) %Making diagonal 0
%end

% To plot 2D graph

%function plot2DGraph(A,ran)
%figure
%plot(ran(:,1),ran(:,2),'O')  %Creating random points in 2D space
%for k = 1: length(A)
%    row = A(k,:); %Extracting kth row
%    for i = 1:length(row)
%        if A(k,i) == 1              % If weight is 1
%            x = [ran(k,1) ran(i,1)];
%            y = [ran(k,2) ran(i,2)]; %x,y-axes stores random points
%            k1 = int2str(k);         % Converting node number to
%                                              string
%            text(ran(k,1),ran(k,2),k1)     % Naming the node
%            line(x,y);                % Drawing line
%        end
%    end
%end
%end

% To plot 3D graph

%function plot3DGraph(A,ran)
%figure
%plot3(ran(:,1),ran(:,2),ran(:,3),'O') %Creating random points in 3D space
%for k = 1: length(A)
%    row = A(k,:); %Extracting kth row
%    for i = 1:length(row)
%        if A(k,i) == 1    % If weight is 1
%            x = [ran(k,1) ran(i,1) ran(k,1)];   %x,y,z-axes stores random
%                                                 points
%            y = [ran(k,2) ran(i,2) ran(k,2)];
%            z = [ran(k,3) ran(i,3) ran(k,3)];
%            k1 = int2str(k);                 %Converting node number to
%                                              string
%            text(ran(k,1),ran(k,2),ran(k,3),k1) % Naming the node
%            line(x,y,z); % Drawing line
%        end
%    end
%end
%end