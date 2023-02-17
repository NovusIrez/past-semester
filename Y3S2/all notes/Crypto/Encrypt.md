0. Generate random encrypt key *E*
1. Sender Alice project <mark style="background: #FFF3A3A6;">to first point</mark> (x1,y1) via *E* <mark style="background: #FFF3A3A6;">from base point</mark>
2. Sender Alice project <mark style="background: #FFF3A3A6;">to second point</mark> (x2,y2) via *E* <mark style="background: #FFF3A3A6;">from Bob's public key </mark>
3. Alice <mark style="background: #FFF3A3A6;">encrypt message</mark> M using AES with key K = x2 and <mark style="background: #FFF3A3A6;">get ciphertext C</mark>
4. Send first point together with C

