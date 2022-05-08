function D = degreeMat(A)
D = [];
for i = 1:length(A)
    D(i,i) = sum(A(i,:));
end
end
