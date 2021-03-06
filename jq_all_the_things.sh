#!/bin/bash

set -e
set -x

# Seeds sponge, from moreutils

for dir in ./*/machinetag.json
do
    cat ${dir} | jq . | sponge ${dir}
done

cat schema.json | jq . | sponge schema.json
cat schema_mapping.json | jq . | sponge schema_mapping.json
cat MANIFEST.json | jq . | sponge MANIFEST.json
