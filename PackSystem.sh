

if [ $(id -u) -eq 0 ]
then
	clear
else
	if echo $(id) |grep sudo > /dev/null
	then
	clear
	echo "Voce não é root"
	echo "Seu usuario esta no grupo sudo"
	echo "Para virar root execute \033[1;31msudo su\033[0m"
	exit
	else
	clear
	echo "Vc nao esta como usuario root, nem com seus direitos (sudo)\nPara virar root execute \033[1;31msu\033[0m e digite sua senha root"
	exit
	fi
fi

if [ -d /etc/PackSystemdir ]
then
echo ""
else
mkdir /etc/PackSystemdir
fi

if [ -d /etc/PackSystemdir/senha ]
then
echo ""
else
mkdir /etc/PackSystemdir/senha
fi

if [ -d /etc/PackSystemdir/limite ]
then
echo ""
else
mkdir /etc/PackSystemdir/limite
fi

clear
echo "\033[1;31m    Menu Do PackSystem \033[1;31m
[1] CriarUser \033[1;34m(Criar Um Usuario SSH)\033[1;31m
[2] Redefinir \033[1;34m(Opcoes Para Os Usuarios)\033[1;31m
[3] Logins \033[1;34m(Ver Conexoes Nos Usuarios)\033[1;31m
[4] AntD \033[1;34m(Protecao Contra Pequenos Ataques Ddos)\033[1;31m
[5] AddHost \033[1;34m(Adcionar Host)\033[1;31m
[6] Banner \033[1;34m(Adcionar Um Banner)\033[1;31m"
read -p ": " opcao

case $opcao in
 1)
   CriarUser;;
 2)
  Redefinir;;
 3)
   Logins;;
 4)
  AntD;;
 5)
  AddHost;;
 6)
  Banner;;
 *)
  id > /dev/null 2> /dev/null
esac