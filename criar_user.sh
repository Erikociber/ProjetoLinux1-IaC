#!/bin/bash

useradd -m -c "Novo Convidado" -s /bin/bash -p "$(openssl passwd -6 '123')" convidado2
passwd convidado2 -e 

useradd -m -c "Novo Convidado" -s /bin/bash -p "$(openssl passwd -6 '123')" convidado3
passwd convidado3 -e

useradd -m -c "Novo Convidado" -s /bin/bash -p "$(openssl passwd -6 '123')" convidado4
passwd convidado4 -e

echo "Finalizado!!"





