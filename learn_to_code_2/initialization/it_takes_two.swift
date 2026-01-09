var expert = Expert()
var character = Character()


func expertMoveDistance(distance: Int){
    for i in 1 ... distance {
        expert.moveForward()
    }

}

func aimToUnlock(){
    while !expert.isBlocked {
        expert.moveForward()
    }
    expert.turnLeft()
    expertMoveDistance(distance: 2)
    expert.turnRight()

}

func returnToSideBase(){
    expert.turnLeft()
    while !expert.isBlocked {
            expert.moveForward()
        }
    expert.turnLeft()
}

func charaCollectAndToggle(){
    while !character.isBlocked {
        character.moveForward()
        if(character.isOnGem){
            character.collectGem()
        }
        if(character.isOnClosedSwitch){
            character.toggleSwitch()
        }
    }
}

expert.turnRight()
aimToUnlock()
expert.turnLockUp()
returnToSideBase()
aimToUnlock()
expert.turnLockDown()
expert.turnLockDown()
charaCollectAndToggle()

