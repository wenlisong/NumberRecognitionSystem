function frames=getFrames(x, fre)
    num = length(x);
    frame_size = 0.02;
    non_overlap_ratio = 0.5;
    N = fre*frame_size;
    m = non_overlap_ratio*N;
    for i=0:1:fix((num-N)/m)
        f_start = 1+i*m;
        if f_start+N-1 <= num
            f_end = f_start+N-1;
        else
            f_end = num;
        end
        frames(i+1,:) = [f_start f_end];
    end
end