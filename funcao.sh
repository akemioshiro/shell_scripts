#! /bin/bash

converte_imagem(){
cd ~/Downloads/imagens-livros

if [ ! -d png ]
then
	mkdir jpg
fi

for imagem in *.png
do
	local imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')
	convert $imagem_sem_extensao.png jpg/$imagem_sem_extensao.jpg
done
}

converte_imagem 2>erros_conversao.txt

echo $imagem_sem_extensao

if [ $? -eq 0 ]
then 
	echo "conversao realizada com sucesso"
else
	echo "houve um erro na conversao"
fi
