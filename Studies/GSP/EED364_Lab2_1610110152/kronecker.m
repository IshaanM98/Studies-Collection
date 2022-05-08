function D = kronecker(A,B)
C = [];
D = [];
for i = 1:length(A)
    C = [];
    for j = 1:length(A)
        C = [C A(i,j).*B];
    end
    D = [D; C];
end
end
