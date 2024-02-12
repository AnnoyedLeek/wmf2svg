# wmf2svg
Quick PowerShell script to convert old .WMF files *(I harvest mine from old clip art CDs)* to .SVG using ImageMagick.

Prequisites
---
[ImageMagick](https://imagemagick.org/script/download.php) - Make sure you add magick.exe to your PATH variable.

Usage
---
Call the .wmf2svg.ps1 script.
The script will prompt you for the folder path which contains the .WMF files. *I recommend using a folder which only contains the files to be converted. I would also recommend using copies of your original .WMF files in case of corruption.*
After verifying the given folder path, the script will send each .wmf file through ImageMagick's "convert" command to convert it to .SVG with its original filename.
The script will output each converted file into inputted folder path and will display path verification for each .SVG file within the Terminal window.
