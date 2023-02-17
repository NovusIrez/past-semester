% ECC modulo an irreducible polynomial
function c = MultiplyF2(a,b)

% Assume the inputs are normally a(x) > b(x) 
% bitget starts from LSB

%a=int(a); b=int(b);

if (a==0) || (b==0),
   c=0;
else 
    n1=floor(log2(a))+1; n2=floor(log2(b))+1;
    
    if n1 < n2,
        temp=a; a=b;b=temp;
        m=n1; n1=n2; n2=m;
    end
    
    a=bitshift(a,n2-1);
    c=a;
    a=bitshift(a,-1);
    for i=n2-1:-1:1,         
        if bitget(b,i),
             c=AddF2(a,c);             
        end 
        a=bitshift(a,-1);
    end
        
end
end