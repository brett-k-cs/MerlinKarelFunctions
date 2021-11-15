func turnRight() {
    turnLeft()
    turnLeft()
    turnLeft()
}

func turnAround() {
    turnLeft()
    turnLeft()
}

func turnNorth() {
    while !isFacingNorth() {
        turnLeft()
    }
}

func turnEast() {
    while !isFacingEast() {
        turnLeft()
    }
}

func turnSouth() {
    while !isFacingSouth() {
        turnLeft()
    }
}

func turnWest() {
    while !isFacingWest() {
        turnLeft()
    }
}

func pickUpAllBeepers() {
    while isBeeperHere() {
        pickUpBeeper()
    }
}

func putDownAllBeepers() {
    while anyBeepersInBag() {
        putDownBeeper()
    }
}

func countBeepersAtLocation() -> Int {
    var beepersAtLocation = 0;                                                                        
    while isBeeperHere() {                                                                            
        pickUpBeeper()                                                                                
        beepersAtLocation += 1;                                                                       
    }                                                                                                 
    for x in 0..<beepersAtLocation {                                                                  
        putDownBeeper()                                                                               
    }                                                                                                 
    return beepersAtLocation;                                                                         
}

func moveIf() {
    if isFrontClear() {
        move()
    }
}

func moveUntilWall() {
    while isFrontClear() {
        move()
    }
}

func moveUntilBeeper() {
    while !isBeeperHere() && isFrontClear() {
        move()
    }
}

var amountOfColumns = 0;

func countColumns() {
    turnSouth()
    moveUntilWall()
    turnAround()
    while isFrontClear() {
        move()
        amountOfColumns += 1;
    }
}

var amountOfRows = 0;

func countRows() {
    turnWest()
    moveUntilWall()
    turnAround()
    while isFrontClear() {
        move()
        amountOfColumns += 1;
    }
}

func isNorthClear() -> Bool {
    if isFacingNorth() {
        return isFrontClear()
    } else if isFacingSouth() {
        turnLeft()
        var isClear = isLeftClear()
        turnSouth()
        return isClear;
    } else if isFacingWest() {
        return isRightClear()
    } else {
        return isLeftClear()
    }
}

func isEastClear() -> Bool {
    if isFacingEast() {
        return isFrontClear()
    } else if isFacingWest() {
        turnLeft()
        var isClear = isLeftClear()
        turnWest()
        return isClear;
    } else if isFacingNorth() {
        return isRightClear()
    } else {
        return isLeftClear()
    }
}

func isSouthClear() -> Bool {
    if isFacingSouth() {
        return isFrontClear()
    } else if isFacingNorth() {
        turnLeft()
        var isClear = isLeftClear()
        turnNorth()
        return isClear;
    } else if isFacingWest() {
        return isLeftClear()
    } else {
        return isRightClear()
    }
}


func isWestClear() -> Bool {
    if isFacingWest() {
        return isFrontClear()
    } else if isFacingEast() {
        turnLeft()
        var isClear = isLeftClear()
        turnWest()
        return isClear;
    } else if isFacingSouth() {
        return isRightClear()
    } else {
        return isLeftClear()
    }
}
