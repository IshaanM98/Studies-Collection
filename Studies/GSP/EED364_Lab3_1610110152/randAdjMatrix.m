function A = randAdjMatrix(N)
A = [];
for i=N:-1:1
    B = [zeros(1,N-i) round(rand(1,i))];
    A = [A;B];
end
B = A.';
A = A - diag(diag(A));
A = A + B;
A = A - diag(diag(A));
end

