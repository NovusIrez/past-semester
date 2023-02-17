% Tutorial 6b: ECC over finite field F[2^m]=299
clear
M=299; Total = [];
% Step 0:Choose a base point P1(x1, y1).
for i=0:99,
    x1=2; y1=100+i;
% Step 1: Assign parameters a and b.
    a=3; 
    y1square = MultiplyF2(y1,y1);
    y1square = modF2(y1square,M);
    x1y1 = MultiplyF2(x1,y1);
    x1y1 = modF2(x1y1,M);

    x1square = MultiplyF2(x1,x1);
    x1cube   = MultiplyF2(x1,x1square);
    ax1square= MultiplyF2(a,x1square);

    b=AddF2(y1square,x1y1);
    b=AddF2(b,x1cube);
    b=AddF2(b,ax1square);

%Step 2: Double Point
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

%Step 3: Add Point
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

    Total=[Total;[x1,y1,x2,y2,x3,y3]];
end


