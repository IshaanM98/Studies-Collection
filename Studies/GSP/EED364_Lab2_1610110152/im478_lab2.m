%% Name: Ishaan Malhotra
%% Roll no. : 1610110152
%% Instructer: Prof. Vijay Chakka
%% Lab 2
%% Aim: Plotting data in graphs and few properties
%%

clc
clear all
close all

%% Question 1

A = randAdjMatrix(5);
ran2D = rand(length(A),2);
ran3D = rand(length(A),3);

plot2DGraph(A,ran2D);
title('2D Random Graph');

val = [1,-1,0,1,-1];
plot3Dv2(A,ran3D,val);
title('3D Random Graph with [1,-1,0,1,-1] at vertices');

[V, D] = eig(A);
eigenvalue= diag(D);
plot3Dv2(A,ran3D,eigenvalue);
title('3D Random Graph with eigenvalues at vertices');

for n=1:length(V)
    plot3Dv2(A,ran3D,V(:,n));
    title('3D Random Graph with Vk(n) at vertices');
end

%% Question 2 

complete = [[0 1 1 1];[1 0 1 1];[1 1 0 1];[1 1 1 0]];
ran1_3D = rand(length(complete),3);

[V, D] = eig(complete);
eigenvalue = diag(D);
plot3Dv2(complete,ran1_3D,eigenvalue);
title('3D complete Graph with eigenvalues at vertices');

for n=1:length(V)
    plot3Dv2(complete,ran1_3D,V(:,n));
    title('3D complete Graph with Vk(n) eigenvectors at vertices');
end

bipartite = [[0 0 0 1 1 1 1];[0 0 0 1 1 1 1];[0 0 0 1 1 1 1];[1 1 1 0 0 0 0];[1 1 1 0 0 0 0];[1 1 1 0 0 0 0];[1 1 1 0 0 0 0]];
ran2_3D = rand(length(bipartite),3);

[V, D] = eig(bipartite);
eigenvalue = diag(D);
plot3Dv2(bipartite,ran2_3D,eigenvalue);
title('3D bipartite Graph with eigenvalues at vertices');

for n=1:length(V)
    plot3Dv2(bipartite,ran2_3D,V(:,n));
    title('3D bipartite Graph with Vk(n) eigenvectors at vertices');
end

regular = [[0 1 1 1];[1 0 1 1];[1 1 0 1];[1 1 1 0]];
ran3_3D = rand(length(regular),3);

[V, D] = eig(regular);
eigenvalue = diag(D);
plot3Dv2(regular,ran3_3D,eigenvalue);
title('3D regular Graph with eigenvalues at vertices');

for n=1:length(V)
    plot3Dv2(regular,ran3_3D,V(:,n));
    title('3D regular Graph with Vk(n) eigenvectors at vertices');
end

star = [[0 1 1 1];[1 0 0 0];[1 0 0 0];[1 0 0 0]];
ran4_3D = rand(length(star),3);

[V, D] = eig(star);
eigenvalue = diag(D);
plot3Dv2(star,ran4_3D,eigenvalue);
title('3D star Graph with eigenvalues at vertices');

for n=1:length(V)
    plot3Dv2(star,ran4_3D,V(:,n));
    title('3D star Graph with Vk(n) eigenvectors at vertices');
end

circular = [[0 1 0 1];[1 0 1 0];[0 1 0 1];[1 0 1 0]];
ran5_3D = rand(length(circular),3);

[V, D] = eig(circular);
eigenvalue = diag(D);
plot3Dv2(circular,ran5_3D,eigenvalue);
title('3D circular Graph with eigenvalues at vertices');

for n=1:length(V)
    plot3Dv2(circular,ran5_3D,V(:,n));
    title('3D circular Graph with Vk(n) eigenvectors at vertices');
end

line = [[0 1 0 0];[1 0 1 0];[0 1 0 1];[0 0 1 0]];
ran6_3D = rand(length(line),3);

[V, D] = eig(line);
eigenvalue = diag(D);
plot3Dv2(line,ran6_3D,eigenvalue);
title('3D line Graph with eigenvalues at vertices');

for n=1:length(V)
    plot3Dv2(line,ran6_3D,V(:,n));
    title('3D line Graph with Vk(n) eigenvectors at vertices');
end

[A,ran2D] = bucky;

plot2DGraph(A,ran2D);
title('2D Bucky Graph');

[A,ran3D] = bucky;
A = full(A);
plot3DGraph(A,ran3D);
title('3D Bucky Graph');

[V, D] = eig(A);

eigenvalue = diag(D);
k = [1,3,30,31,55,60];
for i = 1:length(k)
    plot3Dv2(A,ran3D,V(:,k(i)));
    title('3D Random Graph with eigenvectors at vertices');
end



%% Question 3

B = [[0,1,1];[1,0,1];[1,1,0]];

complete = [[0 1 1 1];[1 0 1 1];[1 1 0 1];[1 1 1 0]];
K1 = kronecker(complete,B);
C1 = cartesian(complete,B);
ran1 = rand(length(K1),2);
ran1_3D = rand(length(K1),3);

bipartite = [[0 0 0 1 1 1 1];[0 0 0 1 1 1 1];[0 0 0 1 1 1 1];[1 1 1 0 0 0 0];[1 1 1 0 0 0 0];[1 1 1 0 0 0 0];[1 1 1 0 0 0 0]];
K2 = kronecker(bipartite,B);
C2 = cartesian(bipartite,B);
ran2 = rand(length(K2),2);
ran2_3D = rand(length(K2),3);

regular = [[0 1 1 1];[1 0 1 1];[1 1 0 1];[1 1 1 0]];
K3 = kronecker(regular,B);
C3 = cartesian(regular,B);
ran3 = rand(length(K3),2);
ran3_3D = rand(length(K3),3);

star = [[0 1 1 1];[1 0 0 0];[1 0 0 0];[1 0 0 0]];
K4 = kronecker(star,B);
C4 = cartesian(star,B);
ran4 = rand(length(K4),2);
ran4_3D = rand(length(K4),3);

circular = [[0 1 0 1];[1 0 1 0];[0 1 0 1];[1 0 1 0]];
K5 = kronecker(circular,B);
C5 = cartesian(circular,B);
ran5 = rand(length(K5),2);
ran5_3D = rand(length(K5),3);

line = [[0 1 0 0];[1 0 1 0];[0 1 0 1];[0 0 1 0]];
K6 = kronecker(line,B);
C6 = cartesian(line,B);
ran6 = rand(length(K6),2);
ran6_3D = rand(length(K6),3);

plot2DGraph(K1,ran1);
title('Kronecker of Complete Graph ');

plot2DGraph(K2,ran2);
title('Kronecker of Bipartite Graph');

plot2DGraph(K3,ran3);
title('Kronecker of Regular Graph');

plot2DGraph(K4,ran4);
title('Kronecker of Star Graph');

plot2DGraph(K5,ran5);
title('Kronecker of Circular Graph');

plot2DGraph(K6,ran6_3D);
title('Kronecker of Line Graph');

plot3DGraph(K1,ran1_3D);
title('Kronecker ofComplete Graph');

plot3DGraph(K2,ran2_3D);
title('Kronecker of Bipartite Graph');

plot3DGraph(K3,ran3_3D);
title('Kronecker of Regular Graph');

plot3DGraph(K4,ran4_3D);
title('Kronecker of Star Graph');

plot3DGraph(K5,ran5_3D);
title('Kronecker of Circular Graph');

plot3DGraph(K6,ran6_3D);
title('Kronecker of Line Graph ');

plot(graph(K1));
title('Using Matlab function plot(graph(A))');

plot(graph(K2));
title('Using Matlab function plot(graph(A))');

plot(graph(K3));
title('Using Matlab function plot(graph(A))');

plot(graph(K4));
title('Using Matlab function plot(graph(A))');

plot(graph(K5));
title('Using Matlab function plot(graph(A))');

plot(graph(K6));
title('Using Matlab function plot(graph(A))');

%% Functions

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

% To find kronecker product

%function D = kronecker(A,B)
%C = []
%D = []
%for i = 1:length(A)
%    C = []
%    for j = 1:length(A)
%        C = [C A(i,j).*B]
%    end
%    D = [D; C]
%end
%end

% To find cartesian product

%function D = cartesian(A,B)
%I1 = eye(length(A))
%I2 = eye(length(B))
%D1 = kronecker(A,I2)
%D2 = kronecker(I1,B)
%D = D1 + D2
%end

% To plot vectors on graph

%function plot3Dv2(A,ran,val)
%figure
%plot3(ran(:,1),ran(:,2),ran(:,3),'O')
%for k = 1: length(A)
%    row = A(k,:);
%    for i = 1:length(row)
%        if A(k,i) == 1
%            x = [ran(k,1) ran(i,1) ran(k,1)];
%            y = [ran(k,2) ran(i,2) ran(k,2)];
%            z = [ran(k,3) ran(i,3) ran(k,3)];
%            k1 = int2str(k-1);
%            text(ran(k,1),ran(k,2),ran(k,3),k1)
%            line(x,y,z);
%        end
%   end
%       x1 = [ran(k,1) ran(k,1) ];
%       y1 = [ran(k,2) ran(k,2) ];
%       z1 = [ran(k,3) (ran(k,3) + val(k))];
%       line(x1,y1,z1)
%end
%end