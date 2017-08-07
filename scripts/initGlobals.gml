global.deaths = 0;
global.time = 0;
global.timeMicro = 0;

global.savenum = 0;
global.difficulty = 0;
global.saveRoom = 0;
global.savePlayerX = 0;
global.savePlayerY = 0;
global.savePlayerFacing = 1;

global.autosave = false;

global.md5StrAdd = "jqwolefjqwoef";

//global.saving_directory = working_directory+'\Data\';

global.acts_total = 1 //number of acts in total, difficulties also count as
                      //their own standalone act, make sure to add those too!
global.current_act = 0;

//hud variables
global.currency = 0;
global.deaths = 0;
global.actinprogress = false; //wether you are in an act determines if the stopwatch is drawn (act in progress)
global.stagetime_microseconds = 0;
global.stagetime_seconds = 0;

global.leftbutton = vk_left;
global.rightbutton = vk_right;
global.upbutton = vk_up;
global.downbutton = vk_down;
global.jumpbutton = vk_shift;
global.shootbutton = ord("Z");
global.actionbutton = ord("A");
global.savebutton = ord("S");
