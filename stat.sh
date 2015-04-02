#!/bin/bash
for i in *.html
do
	grep cnzz $i >/dev/null
	if [ $? -eq 1 ]; then
		sed -i '/\/body/ r cnzz.js' $i
	fi
done
