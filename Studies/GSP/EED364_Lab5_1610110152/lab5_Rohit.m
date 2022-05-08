%% Name: Rohit Agrawal
%% Roll no. : 1610110292
%% Instructer: Prof. Vijay Chakka
%% Lab 5
%% Aim: Spectral methods for graph clustering
%%
clc
clear all
close all
%% Question 1

A = [0 0.23 0.74 0.24 0 0 0 0; 0.23 0 0.35 0 0.23 0 0 0; 0.74 0.35 0 0.26 0.24 0 0 0; 0.24 0 0.26 0 0 0 0.32 0; 0 0.23 0.24 0 0 0.51 0 0.14; 0 0 0 0 0.51 0 0 0.15; 0 0 0 0.32 0 0 0 0.32; 0 0 0 0 0.14 0.15 0.32 0];
lineA = LineGraph(60);
[A2,xy] = bucky;

Laplacian_A = laplacianMat(A);
Laplacian_lineA = laplacianMat(lineA);
Laplacian_bucky = laplacianMat(A2);

[U1,Lam1] = eig(Laplacian_A);
[U2,Lam2] = eig(Laplacian_lineA);
[U3,Lam3] = eig(Laplacian_bucky);

[sorted1, i1] = sort(diag(Lam1));
U1_0 = U1(:,i1(1));
U1_1 = U1(:,i1(2));
U1_7 = U1(:,i1(8));

[sorted2, i2] = sort(diag(Lam2));
U2_0 = U2(:,i2(1));
U2_1 = U2(:,i2(2));
U2_59 = U2(:,i2(60));

[sorted3, i3] = sort(diag(Lam3));
U3_0 = U3(:,i3(1));
U3_1 = U3(:,i3(2));
U3_59 = U3(:,i3(60));

% Reference graph plots
randA = rand(length(A),3);
figure;

subplot(2,2,1);
plot3DGraph(A,randA)
title('Graph from ref. paper')

subplot(2,2,2);
plot3Dv2(A,randA,U1_0);
title('Eigenvector U(0)')

subplot(2,2,3);
plot3Dv2(A,randA,U1_1);
title('Eigenvector U(1)')

subplot(2,2,4);
plot3Dv2(A,randA,U1_7);
title('Eigenvector U(7)')

% Line plots
figure;

subplot(3,1,1);
plotLine3D(lineA,U2_0);
title('Eigenvector U(0)')

subplot(3,1,2);
plotLine3D(lineA,U2_1);
title('Eigenvector U(1)')

subplot(3,1,3);
plotLine3D(lineA,U2_59);
title('Eigenvector U(59)')

% Bucky Plots
figure;

subplot(3,1,1);
plot3Dv2(A2,xy,U3_0);
title('Eigenvector U(0)')

subplot(3,1,2);
plot3Dv2(A2,xy,U3_1);
title('Eigenvector U(1)')

subplot(3,1,3);
plot3Dv2(A2,xy,U3_59);
title('Eigenvector U(59)')

%% Question 2

S1 = spectralSimilarity(U1,2);

S2 = spectralSimilarity(U1,3);

%% Question 3
fiedler = U1(:,2);
y = U1(:,2)/sqrt((U1(:,2).'*U1(:,2)));
E = [];
H = [];
for i = 1:length(y)
    if y(i) > 0
        E = [E i];
    else
        H = [H i];
    end
end

for i = 1: length(A)
    for j = 1:length(A)
        res1 = linearSearch(E,i);
        res2 = linearSearch(H,j);
        if (res1 == 0 && res2 == 0) || (res1 == 1 && res2 == 1)
            A(i,j) = 0;
        end
    end
end
figure;
plot3DGraph(A,randA)
title('Graph Segmentation')

%%
% <include>spectralSimilarity.m</include>
%%
% <include>Search.m</include>
%%
% <include>plotLine3D.m</include>
%%
% <include>LineGraph.m</include>
%%
% <include>linearSearch.m</include>