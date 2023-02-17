function [x3,y3]=AddPointF2(x1,y1,x2,y2,a,b,M)

% A point zero at infinity is (-1,-1)

 if x1==-1 && y1==-1,
     x3=x2;
     y3=y2;
 elseif x2==-1 && y2==-1,
     x3=x1;
     y3=y1;
 elseif x1==x2 && y1==y2,
     [x3 y3]=DoublePointF2(x1,y1,a,b,M);
     
 elseif x1==x2 && y1~=y2,
     x3=-1;
     y3=-1;    
 else
    x2minusx1=AddF2(x1,x2); y2minusy1=AddF2(y1,y2);

    inversex2minusx1=InverseF2(x2minusx1,M);
    m = MultiplyF2(y2minusy1,inversex2minusx1);
    m = modF2(m,M);

    msquare = MultiplyF2(m,m);
    msquare = modF2(msquare,M);

    x1plusx2 = AddF2(x1,x2);

    x3=AddF2(m,msquare);
    x3=AddF2(x3,x1plusx2);
    x3=AddF2(x3,a);

    x1minusx3 = AddF2(x1,x3);
    x3minusy1 = AddF2(x3,y1);

    y3=MultiplyF2(m,x1minusx3);
    y3 = modF2(y3,M);
    y3=AddF2(y3,x3minusy1);
 end