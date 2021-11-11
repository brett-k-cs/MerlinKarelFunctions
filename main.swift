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