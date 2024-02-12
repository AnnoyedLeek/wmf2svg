# WMF2SVG by AnnoyedLeek
# Created 02/12/2024
# https://github.com/AnnoyedLeek/wmf2svg/

# Prompt folder path
$folderPath = Read-Host "Enter the directory path for your .WMF files."

# Check if folder path exists
if (-not (Test-Path $folderPath)) {
    Write-Host "'$folderPath' does not exist."
    exit
}

# Get .WMF files from the folder
$wmfFiles = Get-ChildItem -Path $folderPath -Filter *.wmf

# Convert .WMF files to .SVG using ImageMagick
foreach ($file in $wmfFiles) {
	$outputFile = Join-Path -Path $file.DirectoryName -ChildPath ($file.BaseName + ".svg")
    $command = "magick convert `"$($file.FullName)`" `"$outputFile`""
	Invoke-Expression -Command $command
	
    # Verify SVG file output
    if (Test-Path $outputFile) {
        Write-Host "Successfully converted $($file.Name) to SVG."
    } else {
        Write-Host "Failed to convert $($file.Name) to SVG."
    }
}