The basic idea of ECC signature verification is as follows:

1. Public Key: The recipient obtains the sender's public key.

2. Signature Verification: The recipient uses the sender's public key, the original message, and the digital signature to perform the signature verification process. This process involves computing a point on an elliptic curve that corresponds to the digital signature, and verifying that this point is equal to the product of the sender's public key and a calculated value.

3. Result: If the signature verification process is successful, the recipient can be confident that the signature was created by the sender using their private key and that the message has not been tampered with during transmission.