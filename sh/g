#!/bin/bash

if [$# -le 1]; then
	git add .
	git commit -m $1
	git push origin main
else
	git add .
	git commit -m $1
	git branch -M $2
	git push main $2
fi
