% To show a digital signing and verification process
clear
%Given a base point and elliptic curve parameter 
%x0=4; y0=7; a=2; b=-23; p=257; n=126;
%x0=1; y0=3; a=1; b=7; p=4441; n=4519;
x0=1; y0=3; a=1; b=7; p=257; n=281;
%To generate Bob's random private key
% Lambda = randi([(p-1)/2 p-1],1,1);
Lambda=199;

%To generate Bob's public key
[xLambda yLambda]=ECCmultiplyP(Lambda,x0,y0,a,b,p);
[xLambda yLambda]

% Digital Signing
% Step 1. First, Alice will calculate a hash value of the message m 
%         that we're about to sign. For this for example SHA can be used:
%         e = SHA(m)
e=177;
% Step 2. Generate a random signing key k, 2 < k < n where
%         n  is the period of finite field modulo p.
k=n;
while gcd(k,n) > 1,
    k=randi([(p-1)/2 p-1],1,1);
end
k=mod(k,n)
k=233;
% Step 3. A sender Alice project to the first point (x1, y1) 
%         via E from the base point.
[x1 y1]=ECCmultiplyP(k,x0,y0,a,b,p);
[x1 y1]
% Step 4. Compute a signature
s= mod(e+Lambda*x1,n)
s= mod(s*inverseP(k,n),n)
%
% Step 5.	Send the first point (s, x1, y1),together with message m

% Verification Process
%
% Step 1. Bob calculates a hash value of the message m that he is about to verify. 
% For this for example SHA can be used: e = SHA(m)

% Step 2.  Compute w = s^-1 (mod n)
w=inverseP(s,n)

% Step 3.  Compute u=e*w (mod n) and v = x1*w (mod n)
u=mod(e*w,n) 
v=mod(x1*w,n)

%Step 4. Compute (xM, yM) = u*(x0, y0) + v*(xLambda, yLambda) 
[xL yL]=ECCmultiplyP(u,x0,y0,a,b,p)
[xR yR]=ECCmultiplyP(v,xLambda, yLambda,a,b,p)
[xM yM]=adding(xL,yL,xR,yR,a,b,p)
% Step 5. Check x1 = xM ?

