% Tutorial 2b: Arithmetic in F2
clear
x=167; y=296;
z=AddF2(x,y)
c=MultiplyF2(x,y)
p=283;
[q,r] = DivideF2(c,p)
a=r; 
inverseofa = InverseF2(a,p)
b=MultiplyF2(a,inverseofa)
[q,r] = DivideF2(b,p)