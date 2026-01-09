var gemCounter = 0

func turnAround() {
    expert.turnLeft()
    expert.turnLeft()
}

func moveDistance(distance: Int) {
    for i in 1 ... distance {
        expert.moveForward()
        if expert.isOnGem {
            expert.collectGem()
        }

    }
}

func turnAndCollect() {
    turnAround()
    moveDistance(distance: 3)
    expert.turnRight()
    moveDistance(distance: 3)
}

moveDistance(distance: 3)
expert.turnLockUp()
for i in 1 ... 4 {
    turnAndCollect()
}



