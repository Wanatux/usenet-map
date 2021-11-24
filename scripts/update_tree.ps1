###### Script to automatically update the graph SVG and related HTML files. #####
# Script tasks - Generate graph svg file, dump contents into HTML template file (specific line), then replace old index html with newly generated one.

# Generate new SVG file
.\scripts\tools\dot -Tsvg ".\graph.gv" > "usenet_tree.svg"

# Setup all required content.
$HTMLTemplate = Get-Content -Path ".\index_template.html"
$SVGData = Get-Content -Path ".\usenet_tree.svg"
$SVGInsertLine = 17

# -1 is for array index. SVGInsertLine should be exact line to insert on when viewed in VSCode etc.
# Insert SVG content into HTML
$HTMLTemplate[$SVGInsertLine - 1] = $SVGData

# Write newly generated content to HTML file.
Set-Content -Path ".\index.html" -Value $HTMLTemplate