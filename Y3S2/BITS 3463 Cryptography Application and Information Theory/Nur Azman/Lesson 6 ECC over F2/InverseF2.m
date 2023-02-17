% ECC modulo an irreducible polynomial
function v = InverseF2(a,f)

% Assume the inputs are normally a(x) < f(x)
% 
u=0; v=1; w=0;
b=f; r=a;
while r>1,
    
[q,r] = DivideF2(b,a);
% w = u - v * q mod f
w = MultiplyF2(v,q);
[q,w] = DivideF2(w,f);
w = AddF2(u,w);

b=a; a=r; u=v; v=w;
end
% To generate an inverse table in hexa mod polynomial 299
%for i=1:255,
%  inverseF2(i)=InverseF2(i,299); 
%end;
%A=[0 inverseF2];
%B=reshape(A,16,16);
%C=B';
%CR=mod(C,16);
%CL=(C-CR)/16;
%F=[];
%for i=1:16,
%  F=[F CL(:,i) CR(:,i)]; 
%end