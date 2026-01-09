var expert = Expert()
var character = Character()

func charaMoveAndCollect(distance: Int){
    for i in 1 ... distance {
        character.moveForward()
        if character.isOnGem {
            character.collectGem()
        }
    }

}

expert.moveForward()
expert.turnLockUp()

charaMoveAndCollect(distance: 2)
character.turnRight()
charaMoveAndCollect(distance: 2)
expert.turnLockDown()
expert.turnLockDown()
charaMoveAndCollect(distance: 1)

