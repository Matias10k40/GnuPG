# =============================================================================
# BLOCK B — Public Key Exchange
# =============================================================================

# B1 - Export public key in armored format
gpg --armor --export quinterosmataias40@gmail.com > my_public_key.asc
A5 - List secret keys with long key ID format
gpg --list-secret-keys --keyid-format=long
A4 - List public keys in keyring
gpg --list-keys
A3 - Generate GPG key pair
gpg --full-generate-key
A2 - Check GPG version
gpg --version/bin/bash
BLOCK A — Environment Setup
A1 - Verify GPG is installed
which gpg
