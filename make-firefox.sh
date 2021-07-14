#!/bin/bash

exclusions=""

for domain in $(cat domains.txt | sort):
do
    site=$(echo ${domain} | tr -d ":")
    echo $site
    exclusions="${exclusions}+-site:${site}"
done

sed "s/{exclusions}/${exclusions}/" manifest.json.tpl > manifest.json
zip spamfreesearch.zip manifest.json
