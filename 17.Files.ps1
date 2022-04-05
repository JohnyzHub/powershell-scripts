$dirPath = "C:\Powershell-Notes"
$filePath = "$dirPath\Powershell-Notes.txt"

Clear-Host
Write-Host "File name: $filePath"

if (Test-Path $filePath) {
    Get-Content $filePath
    Write-Host ""
    $newContent = @("", "Line1", "Line2", "Line3")
    Add-Content -Path $filePath -Value $newContent
    Write-Host ""
    Write-Host "New Content Added..."
    Get-Content $filePath
}
else {
    Write-Host "File doesn't exists!"
}