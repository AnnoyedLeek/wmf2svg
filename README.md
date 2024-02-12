# wmf2svg
Quick PowerShell script to convert old .WMF files (I harvest mine from old clip art CDs) to .SVG using ImageMagick.

Prequisites
---
[ImageMagick](https://imagemagick.org/script/download.php) - Make sure you add magick.exe to your PATH variable.

Usage
---
Call the .wmf2svg.ps1 script from PowerShell. The script will prompt you for the folder path which contains the .WMF files. The script will exit if the path is invalid; if not, then it will proceed to convert each .wmf file to .svg using ImageMagick's "convert" command. The script will output each converted file into inputted folder path and will display individual verification for each .SVG file within the Terminal window.
