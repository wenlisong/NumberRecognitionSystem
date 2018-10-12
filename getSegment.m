function segment=getSegment(signal, fre)
    frames = getFrames(signal, fre);
    num = length(frames);
    mid = fix(num/2);
    frame = frames(mid,:);
    segment = signal(frame(1):frame(2));
end