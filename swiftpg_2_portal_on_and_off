func moveAndCollect() {
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

moveAndCollect()
turnAround()
purplePortal.isActive = false
while !isBlocked {
    moveForward()
    
}
if isOnClosedSwitch {
    toggleSwitch()
}

turnAround()
purplePortal.isActive = true
moveAndCollect()
