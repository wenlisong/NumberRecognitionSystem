[x,fre]=audioread('s5A.wav');
seg1 = getSegment(x, fre);
Pem_Seg1 = getPreEmphasis(seg1);
num = length(seg1);
subplot(2,1,1);
plot(seg1)
title('Seg1')

subplot(2,1,2);
plot(Pem_Seg1)
title('Pem Seg1')