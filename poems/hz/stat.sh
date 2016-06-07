#!/bin/bash
for i in *.html
do
	grep cnzz_protocol $i >/dev/null
	if [ $? -eq 1 ]; then
		sed -i '/^Last updated.*CST/ r cnzz.js' $i
	fi
done
