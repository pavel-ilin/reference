## ASCII - American Standard Code for Information Interchange

Representation of simply string

In 1960s and 1970s we just assumed that one byte was one character

```python
print(ord('H'))
# 72
# binary: 1001000

print(ord('e'))
# 101
# binary: 1100101

print(ord('\n'))
# 10
# binary: 0001010

```

## Unicode

To represent the wide range of characters computers must handle we represent characters with more then one byte

UTF-8 - 1-4 bytes - is recommended practice for encoding data to be exchanged between systems

## In python 3, all strings are Unicode

Byte strings
```python
x = b 'abc'
type(x)
# class 'bytes'
```

## Strings to bytes

- When we talk to an external resource like a network socket we sends bytes, so we need to encode python strings into a given character encoding.
- When we read data from an external resource, we must decode it based on the character set so it is properly represented in python as a string.
```python
while True:
  data = mysock.recv(512)
  if (len(data) < 1):
    break
  mystring = data.decode()
  print(mystring)
```

An HTTP request in python

```python
import socket

mysock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
mysock.connect(('data.pr4e.org', 80))
cdm = 'GET http://data.pr4e.org/romeo.txt HTTP/1.-\n\n'.encode()
mysock.send(cdm)

while True:
  data = mysock.recv(512)
  if (len(data) < 1):
    break
  print(data.decode())
mysock.close()
```

![encoding/decoding](https://pp.userapi.com/c850236/v850236694/11d9ad/A-mUedabzk0.jpg)

