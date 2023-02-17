% To show an encryption and decryption process
clear
%Given a base point and elliptic curve parameter 
%x0=1; y0=3; a=1; b=7; p=4441;
x0=1; y0=3; a=1; b=7; p=257;
% ysquare=x0^3+a*x0+b;A=floor(sqrt(ysquare));
% while ysquare-A^2>0,
%     x0=x0+1;
%     ysquare=x0^3+a*x0+b;
%     A=floor(sqrt(ysquare));
% end
x=x0; y=y0; n=1; Point=[]; Point=[Point;[x y]];
while x>0,
    n=n+1;
    [x y]=adding(x,y,x0,y0,a,b,p);
    Point=[Point;[x y]];
end

n
factor(n)
xlswrite('ECCP257.xls',Point);
%To generate Bob's random private key
% Lambda = randi([(p-1)/2 p-1],1,1);
Lambda=199;

%To generate Bob's public key
[xLambda yLambda]=ECCmultiplyP(Lambda,x0,y0,a,b,p);
[xLambda yLambda]
% Encryption Process
% Step 0. Generate random Encrypt key E.
E=randi([(p-1)/2 p-1],1,1);
if mod(E,2)==0,
    E=E+1;
end
E=188;
% Step 1. A sender Alice project to the first point (x1, y1) 
%         via E from the base point.
[x1 y1]=ECCmultiplyP(E,x0,y0,a,b,p);
[x1 y1]
% Step 2. A sender Alice project to the second point (x2, y2) 
%         via E from the Bob’s public key.
[x2 y2]=ECCmultiplyP(E,xLambda,yLambda,a,b,p);
[x2 y2]
% Step 3.	Alice will encrypt the message M using AES with session 
%           key K = x2 and get the ciphertext C= EncryptAESK(M).
% Step 4.	Send the first point (x1, y1),together with the ciphertext C.

% Decryption Process
% Step 0.	Bob received the first point (x1, y1) and the ciphertext C;
% Step 1.	Bob will use his private key and project from 
%           first point (x1, y1) to second point (x2, y2)
[x3 y3]=ECCmultiplyP(Lambda,x1,y1,a,b,p);
[x3 y3]
% Step2.	Bob will take the session key K = x3 and 
%           decrypt the message M = DecryptAESK(C).
