# Alpine com PHP7.4

# Repositório da imagem
https://hub.docker.com/r/andersondmelo/alpinephp74

# Download da imagem
docker pull andersondmelo/alpinephp74

# Rodando a imagem local
docker run --rm -itdp 8030:80 --name alpinephp74 andersondmelo/alpinephp74 /bin/sh

# Usando a imagem no seu Dockerfile
FROM andersondmelo/alpinephp74:latest
