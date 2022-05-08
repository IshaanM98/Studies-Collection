function y = linearSearch(X,ele)
for i= 1:length(X)
    if X(i) == ele
        y = 1;
        return;
    end
end
y = 0;
return;
end

