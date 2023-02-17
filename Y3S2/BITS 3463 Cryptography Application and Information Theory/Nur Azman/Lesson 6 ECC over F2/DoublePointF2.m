function [x2,y2]=DoublePointF2(x1,y1,a,b,M)
% Output  (x2,y2) = 2(x1,y1)
% Elliptic Curve y^2+xy = x^3 + ax^2 + b mod M
% A point zero at infinity is (-1,-1)

 if x1==-1 && y1==-1,
     x2=-1;
     y2=-1;
 else
    x1square = MultiplyF2(x1,x1);
    x1square = modF2(x1square,M);
    
    inversex1square = InverseF2(x1square,M);
    x2 = MultiplyF2(b,inversex1square);
    x2 = modF2(x2,M);

    x2=AddF2(x2,x1square);

    inversex1 = InverseF2(x1,M);
    y2 = MultiplyF2(y1,inversex1);
    y2 = modF2(y2,M);

    x1plus1 = AddF2(x1,1);
    y2=AddF2(y2,x1plus1);

    y2=MultiplyF2(y2,x2);
    y2 = modF2(y2,M);

    y2=AddF2(y2,x1square);
 end