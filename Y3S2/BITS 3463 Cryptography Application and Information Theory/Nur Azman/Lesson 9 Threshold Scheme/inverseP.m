function y=inverseP(a,N)
b=N;
r=mod(b,a); u=0; v=1;
 while r>0,
     
     q = (b-r)/a; w=u-v*q;
    % [b a q r u v w]
     b=a; a=r; u=v; v=w;
     r=mod(b,a);

    % [b a q r u v w]
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
 
 