[x,fre]=audioread('s5A.wav');
seg1 = getSegment(x, fre);
Pem_Seg1 = getPreEmphasis(seg1);
a = getLPCparam(Pem_Seg1, 10)