$mywindow = Get-Host.ui.rawui
$mywindow.WindowTitle = "My Powershell Console"
$mywindow.ForegroundColor = "DarkWhite"
$mywindow.BackgroundColor = "DarkBlack"
Clear-Host
Write-Host "This is cool!"
