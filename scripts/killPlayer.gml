if (instance_exists(obj_player))
{
    with (obj_player)
        instance_destroy();
    
    global.deaths += 1;
    
    if (global.actinprogress == true)
    {
        global.stagetime_deaths += 1;
    }
    
    save_game(false);   //save death/time
}
