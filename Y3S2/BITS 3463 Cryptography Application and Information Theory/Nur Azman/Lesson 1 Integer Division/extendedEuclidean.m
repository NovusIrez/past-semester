
function y=extendedEuclidean(a,b)
% To compute an inverse of a mod b.
% b must be prime or relatively prime to a.
N=b; 
r=mod(b,a); u=0; v=1;

 while r>0, 
     q = (b-r)/a; w=u-v*q;
     %[b a q r u v w]
     b=a; a=r; u=v; v=w;
     r=mod(b,a);
end
  
 if a > 1, 
     y=0; 
 else
     if v > 0,
         y = v;
     else
         y = v + N;
     end
 end;
 % A basic test on input/output
 % a=40;b=257; isprime(b)
 % y=extendedEuclidean(a,b)
 % a*y
 % mod(a*y,b)