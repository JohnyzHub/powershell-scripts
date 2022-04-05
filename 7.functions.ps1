
#Simple Function
function Show-Banner {
    Clear-Host
    Write-Host "##################"
    Write-Host "-- POWERSHELL--"
    Write-Host "##################"
    Write-Host "Welcome to Functions."
}

#Function with parameters
function Add-Numbers([int] $a, [int] $b) {
  [int] $c = $a + $b
  Write-Host "Adding [$a] to [$b] results [$c]."
}

Show-Banner
Add-Numbers 5 10

#Function with return
function Get-Addition([int] $a, [int] $b) {
    return  "Adding [$a] to [$b] results [$a + $b]."
  }

 $result = Get-Addition 10 12 
 Clear-Host
 Write-Host $result

#Function with user input
function Get-Multiply {
    Clear-Host
    [int]$a = Read-Host -Prompt "Enter a valid number:"
    [int]$b = Read-Host -Prompt "Enter another valid number:"
    [int]$c = $a * $b
    Write-Host "Multiply [$a] with [$b] results [$c]"
}
Get-Multiply