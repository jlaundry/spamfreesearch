#!/bin/bash

exclusions=""

for domain in $(cat domains.txt | sort):
do
    site=$(echo ${domain} | tr -d ":")
    echo $site
    exclusions="${exclusions}+-site:${site}"
done

sed "s/{exclusions}/${exclusions}/" manifest.json.tpl | sed "s/{version}/${version}/" > manifest.json
zip spamfreesearch.zip manifest.json
