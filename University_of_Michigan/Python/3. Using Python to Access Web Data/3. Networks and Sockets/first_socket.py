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
