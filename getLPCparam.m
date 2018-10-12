function a=getLPCparam(sig, num_coeff)
    r_0_11 = zeros(num_coeff+1,1);
    for i=1:1:num_coeff+1
        for j=i:1:length(sig)
            r_0_11(i)=r_0_11(i)+sig(j)*sig(j-i+1);
        end
    end

    for i=1:1:num_coeff
        for j=1:1:num_coeff
            r_matrix(i,j)=r_0_11(abs(j-i)+1);
        end
    end
    
    r_1_10=r_0_11(2:num_coeff+1);    
    a = inv(r_matrix)*r_1_10;
end