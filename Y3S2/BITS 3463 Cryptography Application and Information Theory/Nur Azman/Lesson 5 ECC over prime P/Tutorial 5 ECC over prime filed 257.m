% Tutorial 5 ECC mod P
% Sample of An Elliptic Curve E: y^2=x^3+ax+b mod p
a=-4; b=7; p=257;

x1=1; y1=2; % b=y1^2-(x1^3+a*x1);
LHS = mod(y1^2,p);
RHS = mod(x1^3+a*x1+b,p);
[LHS RHS]
[x2 y2]=doubling(x1,y1,a,p);
[x2 y2]

[x3 y3]=adding(x1,y1,x2,y2,a,b,p);
[x3 y3]

% I = (-1, -1) to represent an identity point at infinity
P=[1 x1 y1;2 x2 y2];
xi=x2; yi=y2;
for i=3:300,
    [xi yi]=adding(xi,yi,x1,y1,a,b,p);
    P=[P;i xi yi];
end
P

