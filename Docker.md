# Installation

Remove old docker (just in case):
`sudo apt-get remove docker docker-engine docker.io containerd runc`

Install dependencies:
`sudo apt-get update`

`sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
`

Add Docker’s official GPG key:
`curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`

Check that we have a key:
`sudo apt-key fingerprint 0EBFCD88`

Setup stable repo:
`sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"`

Install docker engine:
`sudo apt-get update`
`sudo apt-get install docker-ce docker-ce-cli containerd.io`

Verify that Docker is installed and able run containers:
`sudo docker run hello-world`
