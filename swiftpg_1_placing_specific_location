let expert = Expert()
world.place(expert, atColumn: 2, row: 6)

func turnAround(){
    expert.turnRight()
    expert.turnRight()
}

func turnLockUpAndMove(){
    expert.turnRight()
    expert.moveForward()
    expert.collectGem()
    turnAround()
    expert.moveForward()
    expert.turnLockUp()
    expert.turnRight()
}

turnLockUpAndMove()
expert.move(distance: 5)
turnLockUpAndMove()
expert.moveForward()
expert.move(distance: 5)
expert.collectGem()
