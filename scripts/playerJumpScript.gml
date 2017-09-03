// Normal Jump

if (place_meeting(x,y+1,obj_block) || onPlatform){
    wasOnGround = true;
    sound_play(sndJump);
    onPlatform = false;
  vspeed = -jumpPower;
  doubleJumpAvailable = true;
  //sprite_change_legs(spr_player_legs_jump,1/4);
      repeat(3) {
      instance_create(x, y+6, obj_jump_spark);
      }
  
  //stop crouching
  crouching = false;
  mask_index = spr_player_hitbox;
  if (place_meeting(x,y,obj_block)) //recrouch if under a wall
    {
        looking = 0;
        crouching = true;
        mask_index = spr_player_hitbox_small;
    }
}
// Double Jump
else if doubleJumpAvailable == true {
    wasOnGround = true;
    sound_play(sndDJump);
    if (superJumpAvailable == false)
    {
        vspeed = -doubleJumpPower;
        doubleJumpAvailable = false;
    }
    else
    {
        vspeed = -doubleJumpPower*1.7;
        doubleJumpAvailable = false;
        superJumpAvailable = false;
    }
    
    //sprite_change_legs(spr_player_legs_jump,1/4);
    repeat(3)
    {
        instance_create(x, y+6, obj_jump_spark);
    }
  
    //stop crouching
    crouching = false;
    mask_index = spr_player_hitbox;
    if (place_meeting(x,y,obj_block)) //recrouch if under a wall
    {
        looking = 0;
        crouching = true;
        mask_index = spr_player_hitbox_small;
    }
}
