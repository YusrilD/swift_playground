let totalGems = randomNumberOfGems
var gemCounter = 0

pinkPortal.isActive = false
bluePortal.isActive = false


func turnAround() {
    turnLeft()
    turnLeft()
}

while gemCounter < totalGems {
    moveForward()
    if isOnGem {
        collectGem()
    }
    if isBlocked{
        turnAround()
        if pinkPortal.isActive == true {
            pinkPortal.isActive = false
            bluePortal.isActive = false
        }
        else if bluePortal.isActive == false {
            pinkPortal.isActive = true
            bluePortal.isActive = true
        }
    }
}
