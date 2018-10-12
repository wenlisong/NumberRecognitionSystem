function dis_matrix=getDistanceMatrix(training_file, test_file)
    training_data=getMFCCmatrix(training_file);
    test_data=getMFCCmatrix(test_file);
    
    for j=1:1:size(training_data, 2)
        for i=1:1:size(test_data,2)
            dis_matrix(j,i)=getDistortion(training_data(:,j),test_data(:,i));
        end
    end
end