#!/bin/bash
for i in *.html
do
	sed -i '/\/body/ r cnzz.js' $i
done
