# https://adamtheautomator.com/powershell-rest-api-tutorial/
$webResult = Invoke-WebRequest https://reqres.in/
$reasonPhrase = $webResult.BaseResponse.ReasonPhrase
$statusCode = $webResult.StatusCode
$urlVersion = $webResult.BaseResponse.Version
Clear-Host
Write-Host "$reasonPhrase:: $statusCode :: $urlVersion"

#Writing content to a file in local drive. The file will be created if doesn't exist.
#Set-Content for overwriting the content of the file
#Add-Content to append the content to the end of the file
Set-Content -Path "C:\Powershell-Notes\WebRequest-file.txt" -Value $webResult 
