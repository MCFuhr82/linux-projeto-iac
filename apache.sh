#! /bin/bash

# atualizando servidor
echo "Atualizando servidor"
apt update -y
apt upgrade -y

# instalando apache2
echo "Instalando apache2"
apt install apache2 -y

# instalando unzip
echo "Instalando unzip"
apt install unzip

# Fazer download do arquivo zip
echo "Fazendo download do arquivo zip"
sudo mkdir /Downloads
cd /Downloads
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Descompactando arquivo
echo "Descompactando arquivo"
sudo unzip main.zip -y

# Copiando arquivos para o diretório destino
echo "Copiando arquivos ...."
rm /var/www/html/index.html
cp -r ./linux-site-dio-main/* /var/www/html/

echo "Script finalizado...."

