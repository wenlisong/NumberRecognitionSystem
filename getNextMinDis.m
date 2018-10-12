function [next_row,next_col]=getNextMinDis(accumu_matrix,j,i)
    vals=[accumu_matrix(j-1,i-1),accumu_matrix(j,i-1),accumu_matrix(j-1,i)];
    min_val=min(vals);
    min_idx=find(vals==min_val);
    if min_idx == 1
        next_row=j-1;
        next_col=i-1;
    elseif min_idx == 2
        next_row=j;
        next_col=i-1;
    elseif min_idx == 3
        next_row=j-1;
        next_col=i;
    end
end