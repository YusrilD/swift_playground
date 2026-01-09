var expert = Expert()

var gemCounter = 0

func moveDistance(distance: Int){
    for i in 1 ... distance {
        expert.moveForward()
    }

}

func turnAround(){
    expert.turnLeft()
    expert.turnLeft()
    moveDistance(distance: 2)
}

func forwardAndCollect() {
    moveDistance(distance: 2)
    expert.collectGem()
}

for i in 1 ... 2 {
    forwardAndCollect()
    turnAround()
    expert.turnRight()
}

forwardAndCollect()
expert.turnLockDown()
turnAround()
expert.turnRight()
moveDistance(distance: 3)
expert.turnRight()
for i in 1 ... 3 {
    forwardAndCollect()
    turnAround()
    expert.turnRight()
}




//forwardAndCollect()