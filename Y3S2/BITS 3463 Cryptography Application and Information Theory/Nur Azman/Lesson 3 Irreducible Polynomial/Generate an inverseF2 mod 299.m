%To generate an inverse table in hexa mod polynomial 299
clear
m=299;
for i=1:255,
 inverseF2(i)=InverseF2(i,m); 
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
% B is an inverse table mod 299