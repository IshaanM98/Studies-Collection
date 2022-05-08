function A = LineGraph(n)
first_row = [0 1 zeros(1,n-2)];
last_row = [zeros(1,n-2) 1 0];
A = [first_row];
for i=0:n-3
    next_row = [zeros(1,i) 1 0 1 zeros(1, n-3-i)];
    A = [A; next_row];
end
A = [A;last_row];
end

