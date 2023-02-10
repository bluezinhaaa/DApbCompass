import hashlib

x = 1
while x > 0:
    umaString = input('Digite algo: ')
    encodeUmaString = umaString.encode()
    hashString = hashlib.sha1(encodeUmaString)
    hexaString = hashString.hexdigest()
    print(hexaString)
