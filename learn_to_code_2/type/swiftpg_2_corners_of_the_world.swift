func keepMovingForward() {
    while !isBlocked {
        moveForward()
    }
}

func forwardAndCollect() {
    while !isBlocked {
        moveForward()
        if isOnGem {
            collectGem()
        }
    }
}

func forwardAndToggle() {
    while !isBlocked {
        moveForward()
        if isOnClosedSwitch {
            toggleSwitch()
        }
    }
}

func turnAround() {
    turnLeft()
    turnLeft()
}

func moveForwardIterate(distance: Int){
    for i in 1 ... distance {
        moveForward()
    }
}

func turnAndCollect() {
    moveForward()
    collectGem()
    turnAround()
    moveForwardIterate(distance: 2)
    collectGem()
    turnAround()
    moveForward()
    turnRight()
    moveForward()
    collectGem()
    turnAround()
    moveForwardIterate(distance: 2)
    collectGem()
}

func turnAndToggle() {
    moveForward()
    toggleSwitch()
    turnAround()
    moveForwardIterate(distance: 2)
    toggleSwitch()
    turnAround()
    moveForward()
    turnRight()
    moveForward()
    toggleSwitch()
    turnAround()
    moveForwardIterate(distance: 2)
    toggleSwitch()
}

turnRight()
orangePortal.isActive = false
forwardAndToggle()
turnAround()
moveForward()
turnLeft()
forwardAndToggle()
turnAround()
orangePortal.isActive = true
moveForwardIterate(distance: 1)
orangePortal.isActive = false
turnAndCollect()
turnAround()
moveForward()
turnRight()
greenPortal.isActive = false
moveForwardIterate(distance: 3)
turnAndCollect()
turnAround()
greenPortal.isActive = true
moveForward()
greenPortal.isActive = false
turnAndToggle()
