if global.TimelineChange = true {
    global.TimelineChange = false
    if global.AnomolyGuess != global.hasAnomoly {
        global.streak = 0
        global.Death = "Timeline"
        global.gameOver = true
    }
    else if global.AnomolyGuess == global.hasAnomoly{
        global.streak = global.streak + 1
        if global.streak < 5 {
            room_goto(TimelineChange)
        }
        else {
            room_goto(EndingScreen)
        }
    }
}

    
if global.streak > 0 and roomStart = true
{
    roomStart = false
    IsAnomoly = irandom_range(0, 10)
    if IsAnomoly >= 3 {
        global.hasAnomoly = true
        RollAnomoly = irandom_range(0, 6);
        if RollAnomoly == global.AnomolyID {
            RollAnomoly = RollAnomoly + 1
        }
        if RollAnomoly = 7 {RollAnomoly = 0}
        global.AnomolyID = RollAnomoly
     
      
    }
    else {
        global.hasAnomoly = false 
    }
        
}