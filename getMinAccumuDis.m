function minAccumuDist=getMinAccumuDis(accumu_matrix)
    [m,n]=size(accumu_matrix);
    last_row_min=min(accumu_matrix(m,:));
    last_col_min=min(accumu_matrix(:,n));
    minAccumuDist=min(last_row_min,last_col_min);
end