class Person {
    [string] $name

    Person() {

    }

    
    Person([string] $name) {
        $this.name = $name
    }
}

[Person]$friend1 = New-Object Person
[string]$friend1.name = "Johny";

[Person]$friend2 = New-Object Person "Sameer"

Clear-Host
Write-Host "Hi! " $friend1.name
Write-Host "Hello! " $friend2.name


class Player {
    [string] $name
    [int] $positionX
    [int] $positionY
    [int] $health
    [int] $speed

    Player() {}
    
    Player([string] $name) {
        $this.name = $name
    }

    setPositions([int] $positionX, [int] $positionY) {
        $this.positionX = $positionX
        $this.positionY = $positionY
    }

    displayStats() {
        Clear-Host
        Write-Host "Player[" $this.name "] has PositionX-" $this.positionX ", PositionY- " $this.PositionY
    }

}

[Player] $Leonard = New-Object Player "Leonard"
$Leonard.setPositions(10, 20)
$Leonard.displayStats()