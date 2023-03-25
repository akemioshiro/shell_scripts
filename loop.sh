#! /bin/bash

CAMINHO_IMAGENS=~/Downloads/imagens-livros

for imagem in $@
do
	convert $CAMINHO_IMAGENS/$imagem.png $CAMINHO_IMAGENS/$imagem.jpg
done
