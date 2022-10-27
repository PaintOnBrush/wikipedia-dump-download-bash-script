#!/bin/bash
wget -N -i <( for i in $(cat <( wget -qO- https://dumps.wikimedia.org/enwiki/latest/ ) | grep a\ href=\"enwiki   | cut -d '>' -f 2 | cut -d '<' -f1); do echo 'https://dumps.wikimedia.org/enwiki/latest/'$i; done )
