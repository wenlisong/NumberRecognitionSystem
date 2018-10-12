function result=getPreEmphasis(signal)
    alpha = 0.945;
    num = length(signal);
    for i=1:1:num-1
        Pem_Seg1(i) = signal(i+1) - alpha*signal(i);
    end
    result=Pem_Seg1;
end