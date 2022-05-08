%% Name: Ishaan Malhotra
%% Roll no. : 1610110152
%% Instructer: Prof. Vijay Chakka
%% Lab 6
%% Aim: Spectral methods for graph clustering
%%
clc
clear all
close all
%% Question 1

[Bucky,xy] = bucky;
Lap_bucky = laplacianMat(full(Bucky));
[U1,Lam1] = eig(Lap_bucky);
vecIDX1 = [2 3 4]; 

figure;
for i = 1:length(vecIDX1)
    subplot(3,1,i)
    title(['Bucky  Clustering using eigvec U' num2str(i)]);
    gClustering(Bucky,xy,U1,vecIDX1(i));   
end

%% Question 2

load('minnesota.mat')
minnesota_A = full(Problem.A);
minnesota_coord = Problem.aux.coord;
plot2DGraph(minnesota_A,minnesota_coord)

lap_minnesota = laplacianMat(minnesota_A);
[U2, lam2] = eig(lap_minnesota);

figure;
for i = 1:length(vecIDX1)
    subplot(3,1,i)
    title(['Minnesota Map Clustering using eigvec U' num2str(i)]);
    gClustering2D(minnesota_A, minnesota_coord, U2, vecIDX1(i));   
end

%% Question 3
x1 = imread('gestureData\1.jpg');
x2 = imread('gestureData\2.jpg');
x3 = imread('gestureData\3.jpg');
x4 = imread('gestureData\4.jpg');
x5 = imread('gestureData\5.jpg');
x6 = imread('gestureData\6.jpg');
x7 = imread('gestureData\7.jpg');
x8 = imread('gestureData\8.jpg');
x9 = imread('gestureData\9.jpg');
x10 = imread('gestureData\10.jpg');
x11 = imread('gestureData\11.jpg');
x12 = imread('gestureData\20.jpg');
x13 = imread('gestureData\22.jpg');
x14 = imread('gestureData\33.jpg');
x15 = imread('gestureData\44.jpg');
x16 = imread('gestureData\55.jpg');
x17 = imread('gestureData\66.jpg');
x18 = imread('gestureData\77.jpg');
x19 = imread('gestureData\88.jpg');
x20 = imread('gestureData\99.jpg');

images = [x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20];
num_imgs = length(images)/128;
ssim_mat = [];
for i = 0:num_imgs-1
    image1 = images(:,(i*128)+1:((i+1)*128));
    ssim_mat2 = [];
    for j = 0:num_imgs-1
        image2 = images(:,(j*128)+1:((j+1)*128));
        ssim_mat2 = [ssim_mat2 ssim(image1,image2)];
    end
    ssim_mat = [ssim_mat; ssim_mat2];
end

ssim_mat = ssim_mat - eye(length(ssim_mat));
lap_ssim_mat = laplacianMat(ssim_mat);
[U3,lam3] = eig(lap_ssim_mat);

cord_ssim = rand(20,3);
vecIDX1 = [2 3 4]; 
y_pred = [];
figure;
for i = 1:length(vecIDX1)
    subplot(3,1,i)
    title(['Image Clustering using eigenvector U' num2str(i)]);
    pred_y = gClustering(ssim_mat,cord_ssim,U3,vecIDX1(i));   
    y_pred = [y_pred pred_y];
end

%% Accuracy
actualVal = [1; 1; 1; 1; 1; 1; 1; 1; 1; 1; 0; 0; 0; 0; 0; 0; 0; 0; 0; 0;];
acc = accuracy(actualVal, y_pred);

%%
% <include>gClustering2D.m</include>
%%
% <include>gClustering.m</include>
%%
% <include>accuracy.m</include>
%%
% <include>LineGraph.m</include>
%%
% <include>linearSearch.m</include>