function [x2 y2]=doubling(x1,y1,a,p)
% Output  (x2,y2) = 2(x1,y1)
% Elliptic Curve y^2 = x^3 + ax + b mod p
% A point zero at infinity is (-1,-1)
 %a=1; n=23; 
 if x1==-1 && y1==-1,
     x2=-1;
     y2=-1;
 else
    x2=1; y2=1;
    deno=mod(2*y1,p);
    invdeno=inverseP(deno,p);
    
    x2=mod(((3*x1^2+a)*invdeno)^2-(2*x1),p);
    y2=mod(((3*x1^2+a)*invdeno)*(x1-x2)-y1,p);
 end