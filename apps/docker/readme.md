# permission
[postinstall](https://docs.docker.com/engine/install/linux-postinstall/)
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run hello-world
