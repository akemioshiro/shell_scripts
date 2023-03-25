#! /bin/bash

cd ~/Downloads/imagens-livros

if [ ! -d png ]
then
	mkdir jpg
fi

for imagem in *.png
do
	imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')
	convert $imagem_sem_extensao.png jpg/$imagem_sem_extensao.jpg
done
