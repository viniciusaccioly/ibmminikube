#!/bin/bash

helm install vincius-servicebook Guestbook/config/ 2>&-

if [ $? == 0 ];then
	helm install vinicius-redis Redis/config/ 2>&-
	if [ $? != 0 ];then
		echo "Confirme se o chart já foi utilizado no ambiente de instalação"
	fi
else
	echo "Confirme se o chart já foi utilizado no ambiente de instalação"
fi
