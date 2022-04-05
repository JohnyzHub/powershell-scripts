<#
    .SYNOPSIS

    Example code from Chapter 6

    Highlight sections of code and right click then select 'run selection' while following along in the chapter

    .DESCRIPTION
    
    Book: PowerShell for Beginners
    Author: Ian Waters
    Chapter: 6
    Code listing: 6_1.ps1
    
    .EXAMPLE
    C:\PS> .\6_1.ps1
#>


# You can define an array by using the type Array and setting its initial value to @(). 
# This means create an empty array but you can also initiliase the array with an initial set of values.
Clear-Host
[Array]$myArray = @(1, 2, 3, 5, 6, 7, 8, 9, 10)
$myArray 

# Filling an array with strings.
Clear-Host
[Array]$names = @("Ian", "Steve", "Rebecca", "Claire")
$names 

# Creating a mixed object array.
Clear-Host
[Array]$mixedArray = @("Ian", 4, 45.6, "Rebecca", 'A')
$mixedArray 

# Accessing array properties such as count (number of itmes in the array).
Clear-Host
[Array]$myArray = @(0,1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
Write-Host "Count:" $myArray.Count
Write-Host "IsFixedSize:" $myArray.IsFixedSize 
Write-Host "Third Element:" $myArray[3] 

# Accessing an entry in the Array. Remember the array starts at 0 where the first item is located.
Clear-Host
[System.Collections.ArrayList]$names = @("Ian", "Steve", "Rebecca", "Claire")
Write-Host "Object from index 2:" $names[2]  

# Looping through an array using a for loop.
Clear-Host
[System.Collections.ArrayList]$names = @("Ian", "Steve", "Rebecca", "Claire")
for ($index = 0; $index -lt $names.Count; $index++) {
    Write-Host "Object from index $index" $names[$index] 
}

# Looping through an array using a foreach loop.
Clear-Host
[System.Collections.ArrayList]$names = @("Ian", "Steve", "Rebecca", "Claire")
foreach ($var in $names) {
    Write-Host "Current object in the array:" $var
} 

# Removing an item from an array.
Clear-Host
[System.Collections.ArrayList]$names = @("Ian", "Steve", "Rebecca", "Claire")
Write-Host "Original list of names:"
$names
$names.Remove("Claire")
Write-Host "New list of names:"
$names

# Removing an entry from the array using the index position in the array.
Clear-Host
[System.Collections.ArrayList]$names = @("Ian", "Steve", "Rebecca", "Claire")
Write-Host "Original list of names:"
$names
$names.RemoveAt(0)
Write-Host "New list of names:"
$names
[String]$newArray = ($names -join ",")
Write-Host "Comma separated: $newArray"


