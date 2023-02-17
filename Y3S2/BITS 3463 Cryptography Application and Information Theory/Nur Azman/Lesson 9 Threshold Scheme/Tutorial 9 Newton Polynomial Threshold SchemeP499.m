% Tutorial 9 Threshold Scheme via Newton Polynomial 499
% To generate shadow key for master key K and 
% parameters a(1), a(2), ..., a(m-1) mod  P
clear
% FILE ='Tutorial9 MasterKey499.xls';
m=5;
K=487; A=[19 23 29 43]; P=499; 
A=[K A];
    n=8;
    X=[3 5 7 9 11 13 15 17];
    
%for K=200:300,
    
    % An efficient mode to evaluate a polynomial at x(0), x(1), x(2), x(n-1)
    %A(1)= K;

    for i=1:n,
        Y(i)=0;
        for j=m:-1:1,
            Y(i)= mod(A(j)+X(i)*Y(i),P);
        end
    end
    % To interpolate an original polynomial
    % from the first 5 shadow points.

    X=[3 5 7 9 11];
    Z=Y(1:m);
    for i=2:m,
        for j=m:-1:i,
            Z(j)=mod((Z(j)-Z(j-1))*inverseP(X(j)-X(j-i+1),P),P);
        end;
        Z
    end
    % To evaluate an interpolation polynomial at x=0
    % P(x) = Z(0)
    %   +Z(1)(x-X0)
    %   +Z(2)(x-X0)(x-X1)
    %   +Z(3)(x-X0)(x-X1)(x-X2)
    %   +Z(4)(x-X0)(x-X1)(x-X2)(x-X3)

    Xfactor=1;
    Target =0;
    for i=1:m,
        Target = mod(Target + Z(i)*Xfactor,P);
        Xfactor= mod(Xfactor*(0-X(i)),P);
    end
    Target
    % Target is the regenerated Master Key evaluated at x=0.
%     RANGEA = ['A' int2str(K-100+5) ':' 'E' int2str(K-100+5)];
%     RANGEY = ['F' int2str(K-100+5) ':' 'M' int2str(K-100+5)];
%     RANGEZ = ['N' int2str(K-100+5) ':' 'R' int2str(K-100+5)];
% 
%     xlswrite(FILE,A,RANGEA); 
%     xlswrite(FILE,Y,RANGEY); 
%     xlswrite(FILE,Z,RANGEZ);
%end

