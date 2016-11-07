#!/bin/bash

for i in ./*.jpg
do
    if [ ! -d "./watermarked" ]; then mkdir "./watermarked"; fi
    filename=$(basename "$i")
    composite \
	-compose atop \
	-geometry x100+20+20 \
	-gravity southwest \
	/media/KINGSTON/alin.png \
	./$filename \
	./watermarked/$filename
done
