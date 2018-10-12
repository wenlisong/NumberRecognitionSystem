dis_matrix = getDistanceMatrix('s1A.wav','s1B.wav');
accumu_matrix = getAccumuMatrix(dis_matrix);
[num_row, num_col] = size(accumu_matrix);

row_idx=num_row;
col_idx=num_col;

min_val=accumu_matrix(num_row,num_col);

for j=1:1:num_row
    if accumu_matrix(j,num_col)<min_val
        min_val=accumu_matrix(j,num_col);
        row_idx=j;
    end
end
for i=1:1:num_col
    if accumu_matrix(num_row,i)<min_val
        min_val=accumu_matrix(num_row,i);
        row_idx=num_row;
        col_idx=i;
    end
end

path(1,:)=[row_idx,col_idx];

while row_idx>1 && col_idx>1
    [row_idx,col_idx]=getNextMinDis(accumu_matrix,row_idx,col_idx);
    path(end+1,:)=[row_idx,col_idx];
end
while row_idx>1
    row_idx = row_idx-1;
    path(end+1,:) = [row_idx, col_idx];
end
while col_idx>1
    col_idx = row_idx-1;
    path(end+1,:) = [row_idx, col_idx];
end
data_cell = sprintfc('%f',accumu_matrix);
for i=1:1:length(path)
    x_idx=path(i,1);
    y_idx=path(i,2);
    data_cell(x_idx,y_idx) = cellfun(@(x) ['<html><table width=100 bgcolor=#FF0000><TR><TD>' x '</TD></TR> </table></html>'], data_cell(x_idx,y_idx), 'UniformOutput', false);
end
f = figure;
uit=uitable(f,'Data',flipud(data_cell),'Position',[20,20,2000,1000],'BackgroundColor',[0.85 0.85 1]);