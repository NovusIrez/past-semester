function [xK yK]=ECCmultiplyP(K,x,y,a,b,p)

% K=200;x=4; y=7;  a=2; b=-23; p=257;
% A point zero at infinity is (-1,-1)

n=ceil(log2(K)); %To generate binaries of K in big endian
for i=1:n,
    k(i)=mod(K,2);
    K=(K-k(i))/2;
end
xL=-1; yL=-1; xR=x; yR=y;
for i=n:-1:1,
    if k(i)==0,
        [xR yR]=adding(xL,yL,xR,yR,a,b,p);
        [xL yL]=doubling(xL,yL,a,p);
    end
    if k(i)==1,
        [xL yL]=adding(xL,yL,xR,yR,a,b,p);
        [xR yR]=doubling(xR,yR,a,p);
    end
end
xK=xL; yK=yL;
%[xK yK]