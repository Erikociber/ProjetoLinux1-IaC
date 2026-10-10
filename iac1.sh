#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm 
mkdir /ven 
mkdir /sec

echo "Criando grupos de usuários..."

groupadd ADM
groupadd VENDAS
groupadd SECRETARIADO

echo "criando usuários..."

useradd eriko -m -s /bin/bash -p "$(openssl passwd -6 '123')" -G ADM
useradd thiago -m -s /bin/bash -p "$(openssl passwd -6 '123')" -G ADM
useradd stelinha -m -s /bin/bash -p "$(openssl passwd -6 '123')" -G ADM

useradd epitacio -m -s /bin/bash -p "$(openssl passwd -6 '123')" -G VENDAS
useradd elisa -m -s /bin/bash -p "$(openssl passwd -6 '123')" -G VENDAS
useradd angelica -m -s /bin/bash -p "$(openssl passwd -6 '123')" -G VENDAS

useradd adriana -m -s /bin/bash -p "$(openssl passwd -6 '123')" -G SECRETARIADO
useradd patricia -m -s /bin/bash -p "$(openssl passwd -6 '123')" -G SECRETARIADO
useradd juliana -m -s /bin/bash -p "$(openssl passwd -6 '123')" -G SECRETARIADO

echo "Especificando permissões dos diretorios..."

chown root:ADM /adm
chown root:VENDAS /ven
chown root:SECRETARIADO /sec

echo "Especificando permissões..."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."

