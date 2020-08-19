/* 
Shift(true,'x',1.20);
argument0 = true or false
True begins a room shift; false ends the room shift
argument1 = 'x' or 'y'
Determines if shifting vertically or horizontally
argument2 = number for determining shift speed
Should only be called from the camera object.
*/
if (argument0 == true)
{

if (proto.paused == 0)
{
    proto.paused = 1;

    //Kill enemies, bullets, items, etc
    with (enemyparent) {event_user(15);}
}
with (bulletparent) {instance_destroy();}
with (effectsparent) {instance_destroy();}
with (itemparent) {visible = 0; image_speed = 0;}

if (argument1 == 'x') 
{
    with (proto) 
    {
        x+=other.argument2;
        if (collision_rectangle(x-9,y-2,x+10,bbox_top,block,1,1) && !grounded) { //y-27
            if (collision_rectangle(x-9,y-2,x+10,bbox_top,block,1,1).object_index != shiftblock) x=xprevious; 
        }
    }
}
if (argument1 == 'y') {proto.y+=argument2;}

with (proto)
{
    if (paused)
    {
        if (alarm[0] >= 0) {alarm[0] += 1;}
        if (alarm[1] >= 0) {alarm[1] += 1;}
    }
}

}

/* End Shift */
if (argument0 == false)
{

if (argument1 == 'x') {proto.x=round(proto.x);}
if (argument1 == 'y') {proto.y=round(proto.y);}
proto.paused = 0; 

with (itemparent) {visible = 1; image_speed = pre_iisp;}
instance_activate_region(view_xview[0]-24,view_yview[0]-16,view_wview[0]+48,view_hview[0]+32,true);
with (enemyparent) {event_user(14);}

}
