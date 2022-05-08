%% Name: Ishaan Malhotra
%% Roll no. : 1610110152
%% Instructer: Prof. Vijay Chakka
%% Lab 4
%% Aim: Properties of Laplacian Eigenvalue Decomposition 
%%
clc
clear all
close all
%% Question 1
% Part a)
A = randAdjMatrix(5);
LA1 = laplacianMat(A);
[V1, D1] = eig(LA1);

% Part b)
complete = [[0 1 1 1];[1 0 1 1];[1 1 0 1];[1 1 1 0]];
LA2 = laplacianMat(complete);
[V2, D2] = eig(LA2);

% Part c)
regular = [[0 1 1 1];[1 0 1 1];[1 1 0 1];[1 1 1 0]];
LA3 = laplacianMat(regular);
[V3, D3] = eig(regular);
[V4, D4] = eig(LA3);

% Part d) and e)
bipartite = [[0 0 0 1 1 1 1];[0 0 0 1 1 1 1];[0 0 0 1 1 1 1];[1 1 1 0 0 0 0];[1 1 1 0 0 0 0];[1 1 1 0 0 0 0];[1 1 1 0 0 0 0]];
LA4 = normLapMat(bipartite);
[V5, D5] = eig(LA4);

%% Question 2
U = load('A1.mat');
lambda1 = [1,0,0,0,0,0,0,0];
lambda2 = [0,1,0,0,0,0,0,0];
lambda3 = [0,0,1,1,0,0,0,0];
lambda4 = [0,0,0,0,1,1,0,0];
lambda5 = [0,0,0,0,1,1,1,1];
lambda6 = [1,1,1,1,1,1,1,1];
lambdas = [lambda1;lambda2;lambda3;lambda4;lambda5;lambda6].';

figure;
for i=1:6
    eigV = diag(lambdas(:,i).');
    L = U.A1*eigV*U.A1.';
    sum = 0;
    for k=1:length(L)
        sum = sum + L(1,k);
    end
    sum = round(1000*sum)/1000;
    D = diag(diag(L));
    A = D - L;
    ran2D = rand(length(A),2);
    subplot(3,2,i);
    if sum == 0
        plot2DGraph(A,ran2D);
    end
end

%% Question 3
U2 = load('A2.mat');
U3 = load('A3.mat');
U4 = load('A4.mat');
U5 = load('A5.mat');
U6 = load('A6.mat');

figure;
for i=1:6
    eigV = diag(lambdas(:,i).');
    L = U2.A2*eigV*U2.A2.';
    sum = 0;
    for k=1:length(L)
        sum = sum + L(1,k); 
    end
    sum = round(1000*sum)/1000;
    D = diag(diag(L));
    A = D - L;
    ran2D = rand(length(A),2);
    subplot(3,2,i);
    if sum == 0
        plot2DGraph(A,ran2D);
    end
end

figure;
for i=1:6
    eigV = diag(lambdas(:,i).');
    L = U2.A2*eigV*U3.A3.';
    sum = 0;
    for k=1:length(L)
        sum = sum + L(1,k); 
    end
    sum = round(1000*sum)/1000;
    D = diag(diag(L));
    A = D - L;
    ran2D = rand(length(A),2);
    subplot(3,2,i);
    if sum == 0
        plot2DGraph(A,ran2D);
    end
end

figure;
for i=1:6
    eigV = diag(lambdas(:,i).');
    L = U2.A2*eigV*U4.A4.';
    sum = 0;
    for k=1:length(L)
        sum = sum + L(1,k); 
    end
    sum = round(1000*sum)/1000;
    D = diag(diag(L));
    A = D - L;
    ran2D = rand(length(A),2);
    subplot(3,2,i);
    if sum == 0
        plot2DGraph(A,ran2D);
    end
end

figure;
for i=1:6
    eigV = diag(lambdas(:,i).');
    L = U2.A2*eigV*U5.A5.';
    sum = 0;
    for k=1:length(L)
        sum = sum + L(1,k); 
    end
    sum = round(1000*sum)/1000;
    D = diag(diag(L));
    A = D - L;
    ran2D = rand(length(A),2);
    subplot(3,2,i);
    if sum == 0
        plot2DGraph(A,ran2D);
    end
end

figure;
for i=1:6
    eigV = diag(lambdas(:,i).');
    L = U2.A2*eigV*U6.A6.';
    sum = 0;
    for k=1:length(L)
        sum = sum + L(1,k); 
    end
    sum = round(1000*sum)/1000;
    D = diag(diag(L));
    A = D - L;
    ran2D = rand(length(A),2);
    subplot(3,2,i);
    if sum == 0
        plot2DGraph(A,ran2D);
    end
end

%{ 
                    Observation in Q2 and Q3

We observe that for eigenvalue set Lambda2 to Lambda5, four graphs are formed 
while for other eigenvalue sets, no graph is formed. On inspecting the Graph 
Lapclacian of the graph formed, we observe that to be a valid Laplacian Matrix,
the sum of elements in a columns and rows should be equal to 0.

%}