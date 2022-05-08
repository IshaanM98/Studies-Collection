function Ln = normLapMat(A)
D = [];
for i = 1:length(A)
    D(i,i) = sum(A(i,:));
end
L = D-A;
Ln = (D^(-1/2))*L*(D^(-1/2));
end

