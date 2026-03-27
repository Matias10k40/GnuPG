
BLOCK A — Environment Setup
A1 - Verify GPG is installed
which gpg

A2 - Check GPG version
gpg --version

A3 - Generate GPG key pair
gpg --full-generate-key

A4 - List public keys in keyring
gpg --list-keys

A5 - List secret keys with long key ID format
gpg --list-secret-keys --keyid-format=long

BLOCK B — Public Key Exchange

B1 - Export public key in armored format
gpg --armor --export quinterosmataias40@gmail.com > my_public_key.asc

B2 - Share public key with partner (uploaded to GitHub)

B3 - Import partner's public key
gpg --import partner_public_key.asc

B4 - Verify partner key was imported successfully
gpg --list-keys

BLOCK C — Encryption and Decryption
C1 - Create plaintext document
echo "Hello Alexander, this is a secret message from Matias." > doc_no_cifrado.txt

C2 - Encrypt file using partner's public key
gpg --encrypt --recipient alexlucien2014@gmail.com --armor --output doc_cifrado.asc doc_no_cifrado.txt

C3 - Share encrypted file with partner (upload to GitHub)

