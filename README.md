💻 Praticando Linux: automação de usuários, grupos e permissões com Bash

Estou desenvolvendo meus conhecimentos em Linux por meio de um projeto prático de automação, utilizando um script Bash para criar diretórios, usuários e grupos, além de configurar permissões de acesso de forma automatizada.

Durante o desenvolvimento, trabalhei com comandos como useradd, chown e chmod, colocando em prática conceitos importantes de administração de sistemas e controle de acesso.

Também estou enfrentando um desafio técnico ao tentar enviar o projeto diretamente do Linux para o GitHub. Ainda não consegui concluir essa etapa como gostaria, mas continuo investigando o problema e buscando uma solução.

Acredito que aprender na prática também significa saber lidar com dificuldades, pesquisar, testar e persistir até encontrar o caminho certo.

Meu objetivo é fortalecer minha base em Linux, redes e segurança da informação, construindo conhecimento e projetos que contribuam para minha trajetória rumo à área de Cibersegurança, especialmente Blue Team e SOC.

Cada desafio resolvido é mais um passo na minha evolução profissional. 🚀



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

![Evidência do Script](./Screenshot%202026-10-11%20172103.png)
