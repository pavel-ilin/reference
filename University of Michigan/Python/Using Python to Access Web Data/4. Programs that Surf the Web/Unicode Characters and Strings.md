# ASCII

American Standard Code for Information Interchange
One character is transform in digit and then digit transform into a binary code.

ord () - function which tells as the numeric value of the character according to ASCII

In 1960-70 we just assume that one byte is one character

# Unicode

Transform all kind of characters from all languages into a binary code

### UTF-8 (Unicode Transformation Format, 8-bit)

Decode all kind of characters into a bytes

Let's decode bytes back into a string of characters
```python
import socket

mysock = socket.socket(socket.AF_INET, socket.SOCK_STREAM) #socket deployment
mysock.connect(('data.pr4e.org', 80)) #connecting to the server
cmd = 'GET http://data.pr4e.org/intro-short.txt HTTP/1.0\r\n\r\n'.encode() #creating request to the server
mysock.send(cmd) #sending request to the server

#while loop is about to recieve server respond
while True:
    data = mysock.recv(512)
    if (len(data) < 1):
        break
    print(data.decode())
mysock.close()

```
How data flying during request-respond cycle

![Unicode](https://pp.userapi.com/c850236/v850236694/11d9ad/A-mUedabzk0.jpg)
