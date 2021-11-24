# Usenet Tree Diagram - Remastered

A better and frequently maintained fork version of the original project by burnwinch.

To watch the diagram, go to this Github pages instance:
https://un.catnip.cloud

Got any suggestions\updates? feel free to email me @: hassonipulus@gmail.com

---

## How to update the graph / tree

- Download and extract the [zip](https://github.com/hassonipulus/hassonipulus.github.io/releases/download/v1/v01.zip) from the Releases tab.
- Make required changes in graph.gv.
  - You can use the web editor [Edotor](https://edotor.net/) or through some text editor.  
    (VS Code has a plugin to preview and edit)
- Once all changes are made and saved, from the repo root run the following commands
  - `./scripts/update_tree.sh` for Bash or \*NIX users.
  - `./scripts/update_tree.ps1` for Windows / PowerShell users.
- Once the script has finished, the `usenet_tree.svg` and `index.html` files should be updated.
  - It is preferable to format these files using something like [Prettier](https://prettier.io/), [VS Code](https://code.visualstudio.com/) or some HTML / XML formatter of choice, but this is for future readibility and maintenance only.
