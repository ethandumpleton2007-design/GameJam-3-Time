alarm[0] = random_range(200,300)
State = "Safe"
global.gameOver = false
globalresetRoom = false

CodeWithMe = [snd_CodeWithMeGuys1, snd_CodeWithMeGuys2, snd_CodeWithMeGuys3, snd_CodeWithMeGuys4, snd_CodeWithMeGuys5, snd_CodeWithMeGuys6, snd_CodeWithMeGuys7, snd_CodeWithMeGuys8, snd_CodeWithMeGuys9, snd_CodeWithMeGuys10, snd_CodeWithMeGuys11, snd_CodeWithMeGuys12, snd_CodeWithMeGuys13, snd_CodeWithMeGuys14, snd_CodeWithMeGuys15, snd_CodeWithMeGuys16, snd_CodeWithMeGuys17, snd_CodeWithMeGuys18, snd_CodeWithMeGuys19]

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
