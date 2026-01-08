var gemCounter = 0

func moveForwardAndCollectGem(){
    moveForward()
    collectGem()
    gemCounter = gemCounter + 1
}

for i in 1 ... 5 {
    moveForwardAndCollectGem()
}
