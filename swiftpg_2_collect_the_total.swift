let totalGems = 12
var gemCounter = 0

while gemCounter < totalGems {
    while !isBlocked {
        moveForward()
        if isOnGem {
            collectGem()
            gemCounter += 1
        }
    }

    if isBlockedLeft && isBlockedRight {
        turnRight()
        turnRight()
    }
    else if isBlockedLeft {
        turnRight()    
    }
    else if isBlockedRight {
        turnLeft()
    }
    
}
