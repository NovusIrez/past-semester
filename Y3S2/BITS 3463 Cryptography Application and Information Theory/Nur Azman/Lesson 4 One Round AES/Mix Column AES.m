%To generate 2x and 3x Tables modulo 283
clear
for i=0:255,
    twoi=MultiplyF2(2,i);
    A2(i+1)=mod(twoi,283);
end
B2=reshape(A2,16,16);
C2=B2'

for i=0:255,
    threei=MultiplyF2(3,i);
    A3(i+1)=mod(threei,283);
end
B3=reshape(A3,16,16);
C3=B3'