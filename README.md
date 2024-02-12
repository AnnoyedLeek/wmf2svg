# wmf2svg
Quick PowerShell script to convert old .wmf files to .svg using ImageMagick.

Prequisite
---
[ImageMagick](https://imagemagick.org/script/download.php) - Make sure you add magick.exe to your PATH variable.

Usage
---
Call the .wmf2svg.ps1 script from PowerShell. The script will prompt you for the folder path which contains the .wmf files. The script will exit if the path is invalid; if not, then it will proceed to convert each .wmf file to .svg using ImageMagick's "convert" command. The script will also verify the creation of each .SVG file within the Terminal window.
