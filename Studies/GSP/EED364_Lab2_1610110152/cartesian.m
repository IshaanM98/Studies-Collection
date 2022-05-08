function D = cartesian(A,B)
I1 = eye(length(A));
I2 = eye(length(B));

D1 = kronecker(A,I2);
D2 = kronecker(I1,B);
D = D1 + D2;
end