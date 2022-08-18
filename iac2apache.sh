#!/bin/bash

echo "Atualizando o servidor...."

apt-get update
apt-get upgrade -y

echo "Servidor atualizado!!!"

echo "Instalando Apache e Unzip...."

apt-get install apache2 -y
apt-get install unzip -y

echo "Apache e Unzip instalados!!!!"

echo "Baixando e descompactando arquivo com site a ser implantado...."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Arquivo baixado e descompactado!!!"

echo "Implantando site no servidor Apache..."

cp -rf /tmp/linux-site-dio-main/* /var/www/html

echo "Site implantado!!!"


echo "Operação Finalizada!!!"


