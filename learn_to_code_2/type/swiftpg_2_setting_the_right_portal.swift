func forwardAndCollect() {
    while !isBlocked {
        moveForward()
        if isOnGem {
            collectGem()
        }
    }
}

func turnAround() {
    turnLeft()
    turnLeft()
}

forwardAndCollect()
turnAround()
bluePortal.isActive = false
forwardAndCollect()
turnAround()
bluePortal.isActive = true
moveForward()
pinkPortal.isActive = false
forwardAndCollect()
turnAround()
pinkPortal.isActive = true
moveForward()
turnAround()
forwardAndCollect()
