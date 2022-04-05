function Read-Character() {
    if ($host.ui.RawUI.KeyAvailable) {
        return $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown").Character
    }   
    return $null
}

#Clear console
Clear-Host

#Clear any pre existing key presses
$host.ui.RawUI.FlushInputBuffer()

Write-Host "Press any key or q to quit"

#Variables
$done = $false

#Keep looping round checking for new key presses
#Loop round while done is not (!) equal to true
while (!$done) {
    #Check for new key presses
    $char = Read-Character

    if ($null -ne $char) {
        Write-Host "You pressed $char"

        #If the key press equals q then exit the loop
        if ($char -eq 'q') {
            Write-Host "Exiting...!"
            $done = $true
        }
    } 
} 