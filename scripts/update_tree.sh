#!/bin/bash

###### Script to automatically update the graph SVG and related HTML files. #####
# Script tasks - Generate graph svg file, dump contents into HTML template file (specific line), then replace old index html with newly generated one.

SVG_INSERT_LINE=17
SVG_FILE_NAME="usenet_tree.svg"

# Generate new SVG file.
./scripts/tools/dot -Tsvg ./graph.gv >$SVG_FILE_NAME

# Wipe reset old HTML file.
cp -f index_template.html index.html

# Replace line 17 with SVG contents.
sed -i "${SVG_INSERT_LINE}r ${SVG_FILE_NAME}" index.html
