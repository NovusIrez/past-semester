function [xK yK]=ECCmultiplyF2(K,x,y,a,b,M)

% A point zero at infinity is (-1,-1)

n=ceil(log2(K)); %To generate binaries of K in big endian
for i=1:n,
    k(i)=mod(K,2);
    K=(K-k(i))/2;
end
xL=-1; yL=-1; xR=x; yR=y;
for i=n:-1:1,
    if k(i)==0,
        [xR yR]=AddPointF2(xL,yL,xR,yR,a,b,M);
        [xL yL]=DoublePointF2(xL,yL,a,b,M);
    end
    if k(i)==1,
        [xL yL]=AddPointF2(xL,yL,xR,yR,a,b,M);
        [xR yR]=DoublePointF2(xR,yR,a,b,M);
    end
end
xK=xL; yK=yL;
%[xK yK]