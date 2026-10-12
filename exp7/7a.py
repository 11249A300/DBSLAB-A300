def caesar_encrypt(planitext, key):
  result = ""
  for ch in plaintext.upper():
    if ch.isalpha():
      result += chr ((ord(ch)-ord('A')+key) % 26 + ord('A'))
    else:
      result += ch
  return result

def casear_decrypt (ciphertext,key):
  return caesar_encrypt(ciphertext,26 - key)


if __name__ == "__main__" :
  plaintext = "Hello World"
  key = 3
  cipher = caesar_encrypt(plaintext , key)
  plain = casear_decrypt(cipher, key)
  print(f"Planitext    : {plaintext}")
  print(f"Key          : {key}")
  print(f"Ciphertext   : {cipher}")
  print(f"Decrypted    : {plain}")
