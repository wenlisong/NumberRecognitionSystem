function zero_cross_rate=getZeroCrossRate(signal)
    zero_cross_times=0;
    for i=1:1:length(signal)-1
        if signal(i)*signal(i+1)<0
            zero_cross_times=zero_cross_times+1;
        end
    end
    zero_cross_rate=zero_cross_times/length(signal);
end