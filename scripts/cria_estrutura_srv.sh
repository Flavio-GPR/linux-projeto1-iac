#!/bin/bash

echo “Criando grupos…”

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo “Criando diretórios, atribuindo  grupos e permissões aos diretórios criados…”

mkdir /disk2/publico
chmod 777 /disk2/publico

mkdir /disk2/adm
chown root:GRP_ADM /disk2/adm
chmod 770 /disk2/adm

mkdir /disk2/ven
chown root:GRP_VEN /disk2/ven
chmod 770 /disk2/ven

mkdir /disk2/sec
chown root:GRP_SEC /disk2/sec
chmod 770 /disk2/sec

echo “Criando os usuários e adicionando nos respectivos grupos…”

useradd -m -s /bin/bash carlos
usermod -aG GRP_ADM carlos
echo "carlos:Senha123" | chpasswd
passwd carlos -e

useradd -m -s /bin/bash maria
usermod -aG GRP_ADM maria
echo "maria:Senha123" | chpasswd
passwd maria -e

useradd -m -s /bin/bash joao
usermod -aG GRP_ADM joao
echo "joao:Senha123" | chpasswd
passwd joao -e

useradd -m -s /bin/bash debora
usermod -aG GRP_VEN debora
echo "debora:Senha123" | chpasswd
passwd debora -e

useradd -m -s /bin/bash sebastiana
usermod -aG GRP_VEN sebastiana
echo "sebastiana:Senha123" | chpasswd
passwd sebastiana -e

useradd -m -s /bin/bash roberto
usermod -aG GRP_VEN roberto
echo "roberto:Senha123" | chpasswd
passwd roberto -e

useradd -m -s /bin/bash josefina
usermod -aG GRP_SEC josefina
echo "josefina:Senha123" | chpasswd
passwd josefina -e

useradd -m -s /bin/bash amanda
usermod -aG GRP_SEC amanda
echo "amanda:Senha123" | chpasswd
passwd amanda -e

useradd -m -s /bin/bash rogerio
usermod -aG GRP_SEC rogerio
echo "rogerio:Senha123" | chpasswd
passwd rogerio -e
