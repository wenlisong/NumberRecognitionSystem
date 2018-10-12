training_file_list = ["s1A.wav","s2A.wav","s4A.wav","s5A.wav"];
test_file_list = ["s1B.wav","s2B.wav","s4B.wav","s5B.wav"];
m = length(training_file_list);
n = length(test_file_list);
for i=1:1:m
    for j=1:1:n
        dis_matrix = getDistanceMatrix(char(training_file_list(i)),char(test_file_list(j)));
        accumu_matrix = getAccumuMatrix(dis_matrix);
        min_accumu_dis = getMinAccumuDis(accumu_matrix);
        comparison_matrix_table(i,j)=min_accumu_dis;
    end
end

f=figure;
t=uitable(f,'Data',comparison_matrix_table,'Position',[20 20 400 350]);
