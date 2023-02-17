

## AES S-box

![[Pasted image 20221020105006.png]]

![[Pasted image 20221020105226.png]]
^ Insert to Affine Transform table from bottom to top

![[Pasted image 20221020105323.png]]

Refer answer with non-inverse


## 128-bit AES

1) XOR with key 0 in 4 x 4 block

![[Pasted image 20221023110800.png]]


![[Pasted image 20221023093133.png]]

2) Subtitution using SubBytes() table

![[Pasted image 20221023093238.png]]

3) Shift Rows

![[Pasted image 20221023093422.png]]

4) Mix Columns (except for last round)

![[Pasted image 20221023110226.png]]

![[Round Steps 2.png]]

5) XOR with round key 1...n

**3 Round**

Round 0 -> XOR key 0
Round 1 -> SubBytes() -> Shift Rows -> Mix Columns -> XOR key 1
Round 2 -> SubBytes() -> Shift Rows -> Mix Columns -> XOR key 2
Round 3 -> SubBytes() -> Shift Rows -> XOR key 3


**Irreducible Polynomial**
= 11B hex

choose starting point

lecture 6 > masuk final


0 -> power over 2 on the Left, multiply both before on the Right
1 -> power over 2 on the Right, multiply both before on the Left

<br/>

## Midterm

- Radix64
- Irreducible Polynomials
- AES
- ECC over prime field
- RSA
- ECC Open Question

ED25519
- Know designer

SECP256K1

SECP256R1

<br/>

## NTRU

![[Ollie Brown - NTRU [_nTWHgLDxp0 - 880x495 - 4m51s].png]]
Z [x] (Z adjoined x)



### Ideal

I ∈ R (Ring)

<br/>

## Note

- do parallel processing on GPU (write code on GPU)
- should know -> Knapsack problem
- Tutorial -> current development of quantum computer

Quantum logic gates wiki

Quantum can solve:-  
Integer factorisation problem

## Masuk Finals

Lecture A Threshold:
What are difficult mathematical problem
![[Pasted image 20221208141229.png]]
Threshold Scheme

- Draw probability distribution function

Implication of quantum computer to cryptography

- GPU
- Quantum Computing over the cloud
- How Quantum Computer affect cryptography
- Little endian


- ECC

**Question 1**
- tutorial 6 polynomial
a. Add / Double Points
b. [[Encrypt]] / [[Decrypt]]
c. [[Sign]] / [[Verify]]
d. Difficult mathematical intractable problem in [[RSA]]
   Difficult mathematical intractable problem in [[ECC]]
   Difficult mathematical intractable problem in [[General Cryptosystem]]

**Question 3**
[[Birthday Paradox]], [[Sha256]], Huffman Tree, [[Entropy]]

**Question 4**
- [[Comparison]] AES, RSA, ECC and [[NTRU]]
- ECC famous among technical cryptographer
- NTRU is faster than all
