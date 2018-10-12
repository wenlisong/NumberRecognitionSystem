[x,fre]=audioread('s5A.wav');
t=(1:length(x))/fre;
plot(t,x)
xlabel('time(s)')
ylabel('voltage')
title('s5A.wav')
print('s5A.jpg', '-djpeg')