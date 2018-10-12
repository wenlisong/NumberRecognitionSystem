function accumu_matrix=getAccumuMatrix(dis_matrix)
    accumu_matrix = dis_matrix;
    num_row=size(accumu_matrix,1);
    num_col=size(accumu_matrix,2);
    
    for i=2:1:num_col
        accumu_matrix(1,i)=accumu_matrix(1,i)+accumu_matrix(1,i-1);
    end
    
    for j=2:1:num_row
        accumu_matrix(j,1)=accumu_matrix(j,1)+accumu_matrix(j-1,1);
    end
    
    for j=2:1:num_row
        for i=2:1:num_col
            accumu_matrix(j,i)=accumu_matrix(j,i)+min([accumu_matrix(j-1,i-1),accumu_matrix(j-1,i),accumu_matrix(j,i-1)]);
        end
    end
end