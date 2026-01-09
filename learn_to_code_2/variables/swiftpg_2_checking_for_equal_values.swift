let switchCounter = 4
var gemCounter = 0
while gemCounter < switchCounter {
    moveForward()
    if isBlocked {
        turnRight()
    }
    if isOnGem {
        collectGem()
        gemCounter = gemCounter + 1
    }
}
