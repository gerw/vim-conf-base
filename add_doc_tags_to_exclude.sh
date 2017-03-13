#!/bin/bash

# copied from https://github.com/vim-scraper/vim-scraper/issues/closed#issue/13
# adds "doc/tags" to the files "bundle/*/.git/info/exclude"
# => git will not report, that the doc/tags was added in a bundle and is untracked

# Pre git 1.7.8:
# for i in bundle/*/.git/info/exclude; do
# 	grep -q "doc/tags" "$i" || echo "doc/tags" >> "$i";
# 	grep -q "\*.pyc" "$i" || echo "*.pyc" >> "$i";
# done

# As of git 1.7.8, the information is stored in a different place.
for i in .git/modules/bundle/*/info/exclude; do
	grep -q "doc/tags" "$i" || echo "doc/tags" >> "$i";
	grep -q "\*.pyc" "$i" || echo "*.pyc" >> "$i";
done
