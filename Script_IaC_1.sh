#!/bin/bash

echo "Criação de Diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criação dos Grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação de Usuários"

useradd carlos -s /bin/bash -m -p $(openssl passwd -1 Senha123456) -G GRP_ADM
useradd maria -s /bin/bash -m -p $(openssl passwd -1 Senha123456) -G GRP_ADM
useradd joao -s /bin/bash -m -p $(openssl passwd -1 Senha123456) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 Senha123456) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 Senha123456) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 Senha123456) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 Senha123456) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 Senha123456) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 Senha123456) -G GRP_SEC

echo "Permissões dos Diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Criação de Usuários e Grupos Realizados com sucesso"
