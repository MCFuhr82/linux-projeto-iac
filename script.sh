#! /bin/bash

# criando diretorios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# criando grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# alterando o grupo resposável pelos diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

# criando usuarios
useradd carlos -m -c "Carlos Silva" -s /bin/bash -p senha123 -G GRP_ADM
useradd maria -m -c "Maria Silva" -s /bin/bash -p  senha123 -G GRP_ADM
useradd joao -m -c "Joao Silva" -s /bin/bash -p senha123 -G GRP_ADM

useradd debora -m -c "Debora Silva" -s /bin/bash -p senha123 -G GRP_VEN
useradd sebastiana -m -c "Sebastiana Silva" -s /bin/bash -p senha123 -G GRP_VEN
useradd roberto -m -c "Roberto Silva" -s /bin/bash -p senha123 -G GRP_VEN

useradd josefina -m -c "Josefina Silva" -s /bin/bash -p senha123 -G GRP_SEC
useradd amanda -m -c "Amanda Silva" -s /bin/bash -p senha123 -G GRP_SEC
useradd rogerio -m -c "Rogerio Silva" -s /bin/bash -p senha123 -G GRP_SEC

# criando permissões para usuários
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


