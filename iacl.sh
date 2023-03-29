#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd carlos -m -s /bin/bash 
useradd joao -m -s /bin/bash  
useradd debora -m -s /bin/bash   
useradd sebastiana -m -s /bin/bash  
useradd roberto -m -s /bin/bash  
useradd josefina -m -s /bin/bash 
useradd amanda -m -s /bin/bash  
useradd rogerio -m -s /bin/bash 
useradd maria -m -s /bin/bash

echo "Especificando permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."

