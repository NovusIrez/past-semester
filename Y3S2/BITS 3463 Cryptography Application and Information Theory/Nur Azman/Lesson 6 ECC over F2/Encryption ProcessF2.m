% To show an encryption and decryption process
clear
%Given a base point and elliptic curve parameter 
M=487; a=3;b=7;n=137;
x0=2; y0=3;

x=x0; y=y0; n=1; Point=[]; Point=[Point;[x y]];
while x>0,
    n=n+1;
    [x y]=AddPointF2(x,y,x0,y0,a,b,M);
    Point=[Point;[x y]];
end

n
factor(n)
%To generate Bob's random private key
% Lambda = randi([(p-1)/2 p-1],1,1);
Lambda=99;

%To generate Bob's public key
[xLambda yLambda]=ECCmultiplyF2(Lambda,x0,y0,a,b,M);
[xLambda yLambda]
% Encryption Process
% Step 0. Generate random Encrypt key E.
E=randi([(n-1)/2 n-1],1,1);
if mod(E,2)==0,
    E=E+1;
end
E
% Step 1. A sender Alice project to the first point (x1, y1) 
%         via E from the base point.
[x1 y1]=ECCmultiplyF2(E,x0,y0,a,b,M);
[x1 y1]
% Step 2. A sender Alice project to the second point (x2, y2) 
%         via E from the Bob’s public key.
[x2 y2]=ECCmultiplyF2(E,xLambda,yLambda,a,b,M);
[x2 y2]
% Step 3.	Alice will encrypt the message M using AES with session 
%           key K = x2 and get the ciphertext C= EncryptAESK(M).
% Step 4.	Send the first point (x1, y1),together with the ciphertext C.

% Decryption Process
% Step 0.	Bob received the first point (x1, y1) and the ciphertext C;
% Step 1.	Bob will use his private key and project from 
%           first point (x1, y1) to second point (x2, y2)
[x3 y3]=ECCmultiplyF2(Lambda,x1,y1,a,b,M);
[x3 y3]
% Step2.	Bob will take the session key K = x3 and 
%           decrypt the message M = DecryptAESK(C).
