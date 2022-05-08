function [L,D] = laplacianMat(A)
D = [];
for i = 1:length(A)
    D(i,i) = sum(A(i,:));
end
L = D-A;
end

