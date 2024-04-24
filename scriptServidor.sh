#!/bin/bash

echo "Atualizando pacotes"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install apache2 -y
echo "Instalado Apache2"

sudo apt-get install unzip -y
echo "Instalado unzip para descompactar arquivos"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
echo "Baixando arquivos do repositório no GitHub"

cd linux-site-dio-main
cp -R * /var/www/html/
echo "Copiando todos os arquivos descompactados para pasta padrao do Apache(/vat/www/html)"



