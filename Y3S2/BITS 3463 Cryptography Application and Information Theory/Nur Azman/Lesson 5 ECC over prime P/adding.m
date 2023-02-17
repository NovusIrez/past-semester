function [x3 y3]=adding(x1,y1,x2,y2,a,b,p)

 %x1=4; y1=7; x2=13; y2=11; a=1; n=23;
% A point zero at infinity is (-1,-1)

 if x1==-1 && y1==-1,
     x3=x2;
     y3=y2;
 elseif x2==-1 && y2==-1,
     x3=x1;
     y3=y1;
 elseif x1==x2 && mod(y1+y2,p)==0,
     x3=-1;
     y3=-1;
 elseif x1==x2 && y1==y2,
     [x3 y3]=doubling(x1,y1,a,p);
     
 else
    deno = mod(x2-x1,p);
    invdeno=inverseP(deno,p);
    x3=mod((y2-y1)*invdeno,p);
    x3=mod(x3^2,p);
    x3=mod(x3-(x1+x2),p);
    
    y3=mod((y2-y1)*invdeno,p);
    y3=mod(y3*(x1-x3),p);
    y3=mod(y3-y1,p);
   
 end