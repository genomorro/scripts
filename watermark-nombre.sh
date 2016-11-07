#!/bin/bash

for i in ./*.jpg
do
    filename=$(basename "$i")
    composite \
	-compose atop \
	-geometry +20+10 \
	-gravity southeast \
	/media/KINGSTON/FOTOS\ P\ MARCA\ DE\ AGUA/NOMBRES\ P\ MARCAS\ DE\ AGUA/nombreale1.png \
	./$filename \
	./$filename
done
