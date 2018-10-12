data_s1A=getMFCCmatrix('s1A.wav');
data_s1B=getMFCCmatrix('s1B.wav');
Mx=data_s1A(:,28);
My=data_s1B(:,32);
distance=getDistortion(Mx,My)