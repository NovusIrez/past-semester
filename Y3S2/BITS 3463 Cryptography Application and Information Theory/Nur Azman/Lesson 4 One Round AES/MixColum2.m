clear
B=[48	250	76	128
49	130	64	253
171	250	117	48
71	127	113	63];

M=[2 3 1 1;1 2 3 1;1 1 2 3;3 1 1 2];
C=zeros(4,4);
for i=1:4,
    for j=1:4,
        %C(i,j)=0;
        for k=1:4,
            D=MultiplyF2(M(i,k),B(k,j));
            D = modF2(D,283);
            C(i,j)=AddF2(C(i,j),D);
        end
    end
end
disp_hex('C =',C);