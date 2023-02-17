- ECC use a smaller size of keys compared to RSA allows for faster and more efficient signature verification, while still providing strong security against tampering and other types of attacks.


Comparison between RSA, ECC and NTRU.

-  RSA security is better established, since integer factorization is a longtimes established topic. It provides encryption and signature substantially with the same algorithm. It can used for key exchange indirectly.
-  ECC is newer, and its security limitations are an evolving topic. Compared with RSA it allows much shorter keys and computations. The basic algorithm provides key exchange, and indirectly encryption and signature (El Gamal).
-  NTRU is newer too, and for the same level of security requires longer keys and cryptograms (in bits) than RSA and ECC but allows much faster encryption and decryption and simpler implementation (all the arithmetic is done in small numbers). It provides encryption and signature through two different (but related) akgorithms, and indirect key exchange. It is expected to be quantum computing safe, and variants exist for which there is a security proof, only relying on the assumption that NP = P is false (while RSA and ECC do not have security proofs, and rely on the unproven assumption that integer factoring and discrete logarithm are unfeasible).