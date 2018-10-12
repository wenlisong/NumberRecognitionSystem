function MFCCs=getMFCCmatrix(filename)
    [x, fre] = audioread(filename);
    [t1,t2]=getStartEndTime(x,fre);
    
    sig=x(t1*fre/1000:t2*fre/1000);
    Tw = 25;
    Ts = 10;
    alpha = 0.945;
    window = @hamming;
    R=[300 3700];
    M=20;
    C=13;
    L=22;
    [MFCCs,~,~]=mfcc(sig,fre,Tw,Ts,alpha,window,R,M,C,L);
end