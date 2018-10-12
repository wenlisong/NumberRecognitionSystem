[x,fre]=audioread('s5A.wav');
seg1 = getSegment(x, fre);
X_magnitude = getFT(seg1);
frame_size = 0.02;
N = fre*frame_size;
f = (0:1:N/2)*fre/2;
plot(f,X_magnitude)
title('Spectral Envelop');
ylabel('Energy');
xlabel('Frequency');
print('fourier_s5A.jpg', '-djpeg')
