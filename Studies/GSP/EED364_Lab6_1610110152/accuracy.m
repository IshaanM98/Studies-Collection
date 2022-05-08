function acc = accuracy(y,y_pred_Mat)
    acc = [];
    for k = 1:size(y_pred_Mat,2)
        y_pred = y_pred_Mat(:,k);
        correct_count = 0;
        incorrect_count = 0;
        for i = 1:length(y)
            if abs(y(i) - y_pred(i)) == 0
                correct_count = correct_count + 1;
            else
                incorrect_count = incorrect_count + 1;
            end
        end
        total = length(y);
        acc_per = (correct_count/total)*100;
        acc = [acc; acc_per];
    end
end

