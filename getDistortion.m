function dist=getDistortion(Mx, My)
    square_sum = 0;
    for j=2:1:length(Mx)
        square_sum = square_sum + (Mx(j) - My(j)).^2;
    end
    dist = sqrt(square_sum);
end