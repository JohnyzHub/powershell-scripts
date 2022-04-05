Clear-Host
[System.Console]::Beep(440, 200)

# Let powershell speak
Add-Type -AssemblyName System.Speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$speak.Speak("Would you like to play a game")
$speak.Dispose()  