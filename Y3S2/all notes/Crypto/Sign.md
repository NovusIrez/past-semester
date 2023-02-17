1. Alice<mark style="background: #FFF3A3A6;"> calculate the hash value</mark> of message M
2. Generate<mark style="background: #FFF3A3A6;"> random signing key k</mark>
	From base point (x0,y0) anyone can <mark style="background: #FFF3A3A6;">generate first point</mark> P1(x1,y1) = k P0(x0,y0)
	Let number of points on elliptic curve be n
	Take x1 (mod n)
3. Compute s = (e + lamda x x1) / k
4. The digital signature is (x1,s)