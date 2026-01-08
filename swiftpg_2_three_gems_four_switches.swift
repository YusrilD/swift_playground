var gemCounter = 0
var switchCounter = 0

func turn(){
    if isBlockedLeft{
        turnRight()
    }
    if isBlockedRight {
        turnLeft()
    }
    gemAndSwitchCollecter()
}

func gemAndSwitchCollecter() {
    if isOnGem && gemCounter < 3{
        collectGem()
        gemCounter = gemCounter + 1
    }
    if isOnClosedSwitch && switchCounter < 4 {
        toggleSwitch()
        switchCounter = switchCounter + 1
    }
}

while (gemCounter < 3) || (switchCounter < 4) {
    moveForward()
    if isBlocked {
        turn()
    }else{
        gemAndSwitchCollecter()
    }
}
