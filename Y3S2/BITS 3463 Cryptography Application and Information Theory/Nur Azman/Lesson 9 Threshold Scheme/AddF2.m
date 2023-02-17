% ECC modulo an irreducible polynomial
function c = AddF2(a,b)

%Assume the inputs are polynomial a(x) and b(x) of the same size
c=bitxor(a,b);

%x=167; y=296;
%z=AddF2(x,y);