
from Crypto.PublicKey import DSA
from Crypto.Signature import DSS
from Crypto.Hash import SHA256
import binascii


# DSA Implementation
class DigitalSignatureSystem:
    def __init__(self, key_size=1024):
        print(f"[*] Generating {key_size}-bit DSA key pair...")
        self.private_key = DSA.generate(key_size)
        self.public_key = self.private_key.publickey()
        print("[+] Key pair generated successfully")

    def sign(self, message: str) -> bytes:
        msg_bytes = message.encode("utf-8")
        hasher = SHA256.new(msg_bytes)
        signer = DSS.new(self.private_key, "fips-186-3")
        return signer.sign(hasher)

    def verify(self, message: str, signature: bytes) -> bool:
        hasher = SHA256.new(message.encode("utf-8"))
        verifier = DSS.new(self.public_key, "fips-186-3")

        try:
            verifier.verify(hasher, signature)
            return True
        except ValueError:
            return False

    def export_keys(self):
        priv_pem = self.private_key.export_key().decode()
        pub_pem = self.public_key.export_key().decode()
        return priv_pem, pub_pem


if __name__ == "__main__":
    # DSA Digital Signature
    dss = DigitalSignatureSystem(key_size=1024)

    message = "Transfer Rs. 50000 from Account 101 to Account 202"
    signature = dss.sign(message)

    print("\nOriginal Message :", message)
    print("Signature (hex) :",
          binascii.hexlify(signature).decode()[:40] + "...")

    print("\n[✓] Signature Valid :", dss.verify(message, signature))

    tampered = "Transfer Rs. 50000 from Account 101 to Account 999"
    print("[✗] Tampered Valid :", dss.verify(tampered, signature))

    priv, pub = dss.export_keys()

    print("\nPrivate Key (PEM):")
    print(priv[:80] + "...")

    print("\nPublic Key (PEM):")
    print(pub[:80] + "...")

    # RSA Digital Signature
    from Crypto.PublicKey import RSA
    from Crypto.Signature import pkcs1_15

    print("\n=== RSA Digital Signature ===")

    rsa_key = RSA.generate(2048)
    rsa_pub = rsa_key.publickey()

    h = SHA256.new(message.encode())
    sig = pkcs1_15.new(rsa_key).sign(h)

    print("Message :", message[:30] + "...")
    print("Signature :",
          binascii.hexlify(sig).decode()[:40] + "...")

    try:
        pkcs1_15.new(rsa_pub).verify(
            SHA256.new(message.encode()), sig
        )
        print("Verification: VALID [✓]")
    except (ValueError, TypeError):
        print("Verification: INVALID [✗]")
