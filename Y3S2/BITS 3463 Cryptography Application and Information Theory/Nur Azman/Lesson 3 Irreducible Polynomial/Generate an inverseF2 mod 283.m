%To generate an inverse table in hexa mod polynomial 283
clear
p=283;
for i=1:255,
 inverseF2(i)=InverseF2(i,p); 
end;
A=[0 inverseF2];
B=reshape(A,16,16);
C=B';
CR=mod(C,16);
CL=(C-CR)/16;
F=[];
for i=1:16,
 F=[F CL(:,i) CR(:,i)]; 
end
% C is an inverse table mod p
C
xlswrite('inverse283.xls',C);