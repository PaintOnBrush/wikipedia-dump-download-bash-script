#!/bin/bash
for i in $(cat <( curl https://dumps.wikimedia.org/enwiki/latest/ | grep 'href="enwiki' | cut -d '"' -f 2 ) ) ; do echo $i; [[ -f $i ]] && curl -z $i https://dumps.wikimedia.org/enwiki/latest/$i -o $i || curl https://dumps.wikimedia.org/enwiki/latest/$i -o $i  ;done
