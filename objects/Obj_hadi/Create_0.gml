alarm[0] = random_range(250,500)
State = "Safe"
gameOver = false
globalresetRoom = false


function changeState() {
    if State == "Search"
    {
        State = "Safe";
    }
    else
    {
        State = "Search";
    }  
}
