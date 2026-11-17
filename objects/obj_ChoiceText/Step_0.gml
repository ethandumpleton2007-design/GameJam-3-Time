if keyboard_check(vk_space) and ending == "Unchosen" and ready = true {
    ending = "Bad";
    obj_EndPicture.show = true;
    obj_EndingMono.show = true;
    visible = false;
}

if keyboard_check(vk_enter) and ending == "Unchosen" and ready = true {
    ending = "Good";
    obj_EndPicture.show = true;
    obj_EndingMono.show = true;
    visible = false;
}
