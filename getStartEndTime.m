function [T1,T2]=getStartEndTime(x,fre)
    start_energy_cross_count = 0;
    end_energy_cross_count = 0;
    start_frame = 1;
    T1=0;
    T2=length(x)*1000/fre;
    frames = getFrames(x, fre);
    [row, ~] = size(frames);
    for i=1:1:row
        frame = x(frames(i,1):frames(i,2));
        aver_en = getAverageEnergy(frame);
        zcr = getZeroCrossRate(frame);
        if i==1
            energy_threshold = aver_en*4;
            zero_cross_threshold = zcr;
        end
        if start_frame == 1
            if aver_en>energy_threshold && zcr>zero_cross_threshold
                start_energy_cross_count = start_energy_cross_count+1;
            end
            if start_energy_cross_count == 3
                start_frame = frames(i,1);
                T1 = fix(start_frame/fre*1000);
            end
        else
            if aver_en<energy_threshold && zcr<zero_cross_threshold
                end_energy_cross_count = end_energy_cross_count+1;
            end
            if end_energy_cross_count == 3
                end_frame = frames(i,1);
                T2 = fix(end_frame/fre*1000);
                break
            end
        end
    end
end

