//���݂̏�Ԃ�ێ�
wx = x;
wy = y;
wxpre = xprevious;
wypre = yprevious;
wSpeed = vspeed;

if(vspeed>0){
hosei=vspeed+1;
}

else{
hosei=0;
}



//�ǂƂ̏Փ˔���(�Փ˂�����ڒn)
if(place_meeting(x,y+hosei,obj_block) == true ){
  x = xprevious;
  y = yprevious;
  move_contact_solid(point_direction(xprevious,yprevious,wx,wy),-1)
  vspeed = 0;
  gravity = 0;
  if(place_meeting(x,y+1,obj_block) == true){
    if(place_meeting(wx,y-3-maxRunSpeed,obj_block) == false){
      x = wx;
      y -= 3;
      move_contact_solid(270,10);
   }
  }
}

else if(place_meeting(x,y,obj_block) == true ){
  x = xprevious;
  y = yprevious;
  move_contact_solid(point_direction(xprevious,yprevious,wx,wy),-1)
  vspeed = 0;
  gravity = 0;
  //�⓹��o�锻��
  if(place_meeting(x,y+1,obj_block) == true){
    if(place_meeting(wx,y-3-maxRunSpeed,obj_block) == false){
      x = wx;
      y -= 3;
      move_contact_solid(270,10);
   }
  }
}else{
  //�⓹����锻��  x-(maxSpeed*image_xscale-1)
  if(onblock == 0){
    if(place_meeting(xprevious+image_xscale,y+3,obj_block) == true){
      move_contact_solid(270,10);
    }
  }
}
//���ɋ�Ԃ�����Ώd�͂̐ݒ�
if(place_meeting(x,y+1,obj_block) == false){
    gravity = 0.4;
  //��ɋ�Ԃ�����Έʒu�Ƒ��x�ϓ�����
  if(place_meeting(x,y-1,obj_block) == false){
    y = wy;
    //���̕ǂɑ̓����肵�Ȃ��璅�n�����Ƃ��̐��E�E
    if(place_free(x,y) == false){
      y = yprevious;
      move_contact_solid(point_direction(x,y,x,wy),-1);
    }
    vspeed = wSpeed;
  }else{
    //���̕ǂɑ̓����肵�Ȃ���V��ɏՓ˂����Ƃ��̐���
    if(place_free(wx,y) == false){
      y += 1;
    }
  }
}
else{ // add point
  if(place_meeting(wx,wy,obj_block) == true){
    if(place_meeting(x,wy,obj_block) == false){
        y = wy;
        gravity = 0.4;
        vspeed = wSpeed;
    }
  }
}

if(place_meeting(x,y+1,obj_block) == true && vspeed == 0){
  onblock = 0;
  doubleJumpAvailable = true;
}
