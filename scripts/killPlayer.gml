if (instance_exists(obj_player))
{
    with (obj_player)
    {
        instance_destroy();
        var dir = 0;
        repeat(30)
        {
            var obj;
            obj = instance_create(x, y, obj_gameover_shard);
            obj.speed = 10;
            obj.direction = dir;
            dir += 360/30
        }

        instance_create(x, y, obj_gameover_burst);
        sound_play(sndDeath);
    }
    
    global.deaths += 1;
    
    if (global.actinprogress == true)
    {
        global.stagetime_deaths += 1;
    }
    
    save_game(false);   //save death/time
}
