% Generate 2-3 bytes mod Irreducible Polynomial 283
clear
M=283;
for i=0:15,
    for j=1:15,
        xy=16*i+j;
        Twoxy(i+1,j+1)=MultiplyF2(2,xy);
        Twoxy(i+1,j+1)=modF2(Twoxy(i+1,j+1),M);
        
        Threexy(i+1,j+1)=MultiplyF2(3,xy);
        Threexy(i+1,j+1)=modF2(Threexy(i+1,j+1),M)
    end
end
disp_hex('2xy :',Twoxy);
disp_hex('3xy :',Threexy);