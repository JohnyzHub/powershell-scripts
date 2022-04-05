Add-Type -AssemblyName System.Speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer



Clear-Host

Write-Host "Welcome to Powershell Script!!.."
$dirPath = Read-Host -Prompt "Enter the project directory path"
$dirPath = $dirPath.Trim()

if ( -not(Test-Path $dirPath)) {
    Write-Host "$dirPath Doesn't exist!"
    $speak.Speak("$dirPath Doesn't exist!")
    $speak.Dispose()  
    return;
}

$filePath = "$dirPath/pom.xml"

if ( -not(Test-Path $filePath)) {
    Write-Host "$filePath Doesn't exist!"
    $speak.Speak("$filePath Doesn't exist!")
    $speak.Dispose()  
    return;
}

$mvnCmd = "mvn clean install -U -q"
$mvnResult = Invoke-Expression $mvnCmd

if ($null -eq $mvnResult) {
    Write-Host "Build successful!"
    $speak.Speak("Build successful!")
    $speak.Dispose()  
    return;
}



$firstLine = $mvnResult.Split([Environment]::NewLine) | Select-Object -First 1
Write-Host "First Line: $firstLine"

if ($firstLine -like "*ERROR*") {
    Write-Host "Build failed"
    $speak.Speak("Build failed")
    $speak.Dispose()  
    return;
}