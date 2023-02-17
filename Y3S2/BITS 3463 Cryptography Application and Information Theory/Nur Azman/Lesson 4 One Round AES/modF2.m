% ECC modulo an irreducible polynomial
function r = modF2(a,b)

% Assume the inputs are normally a(x) > b(x) 
% A special case of n1 = n2 but a < b.
% bitget starts from LSB
% Assume b is an irreducible polynomial

n1=floor(log2(a))+1;n2=floor(log2(b))+1;
if n1 < n2,
    r=a; q=0;
elseif n1==n2,
    r=AddF2(a,b);q=1;
else % n1 > n2
    
    n=n1-n2;
    b=bitshift(b,n);
    q=0;
    %q=bitshift(q,n);
    for i=n:-1:0,
        
        if bitget(a,n1),
            a=bitxor(a,b);
            q=q+bitshift(1,i);
        end 
        b=bitshift(b,-1);
        n1=n1-1;
      
    end
    r=a;
end
