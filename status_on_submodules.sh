#!/bin/bash

modules=$(cat .git/config .gitmodules | grep "\[submodule" | sort -u | grep -o "\".*\"" | grep -o "[^\"]*")

for i in $modules; do
	pushd $i > /dev/null

	echo $i
	git status
	echo

	popd > /dev/null
done
