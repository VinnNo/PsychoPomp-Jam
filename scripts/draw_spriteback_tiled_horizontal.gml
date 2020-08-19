/***************************************************
  Usage :   draw_background_tiled_horizontal(back,x,y)
  Arguments :   argument0   ==  sprite_index
                argument1   ==  x
                argument2   ==  y
                argument3    == xscale
                argument4   == yscale
  Event :   draw event
 ***************************************************/
 
 var back,width,xx,yy,left,right,i;
 
 back=argument0;
 width=sprite_get_width(back);
 xx=argument1;
 yy=argument2;
 x1 = argument3;
 y1 = argument4;
 left=-1;
 right=view_xview[view_current]/width+view_wview[view_current]/width+1;
 if (view_enabled)
 {
    for (i=left; i<right; i+=1)
    {
        draw_sprite_ext(back, image_index, xx mod width+width*i, yy, image_xscale * x1, y1, 0, c_white, 1);
    };
 }
 else
 {
    for (i=-1; i<room_width/width+1; i+=1)
    {
        draw_sprite(back, image_index, xx mod width+width*i, yy);
    };
 };
