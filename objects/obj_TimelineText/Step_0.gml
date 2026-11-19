if (keyboard_check(vk_space) and room = TimelineChange and ready = true){
    globalresetRoom = true
    obj_HadiManager.roomStart = true
    room_goto(HadiMinigame);
}
