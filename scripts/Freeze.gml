/* 
Freeze(true); 
argument0 = true of flase
True freezes, false unfreezes.
This script executes the "Freeze Effect" for when you grab an 
energy capsule and such; also used when pausing the game, etc.
*/

if (argument0 == true)
{

//Character
if (proto.paused == 0)
{
    pre_isp = proto.image_speed;
    proto.image_speed = 0;
    proto.paused = 1;

    proto_energy.image_speed = 0;
    
    //Character Bullets
    with (bulletparent)
    {
        pre_bisp = image_speed;
        image_speed = 0;
        paused = 1;
    }

    //Items
    with (itemexplosion) {pre_iexisp = image_speed; image_speed = 0;}
    with (itemparent)
    {
        image_speed = 0;
        paused = 1;
    }
    
    //Blocks
    with (block) {pre_oisp = image_speed; image_speed = 0;}
}

with (proto)
{
    if (paused)
    {
        if (alarm[0] >= 0) {alarm[0] += 1;}
        if (alarm[1] >= 0) {alarm[1] += 1;}
    }
}

with (bulletparent) {for (i=0; i<=11; i+=1) {if (alarm[i] > 0) {alarm[i]+=1;} } } 

//Items
with (itemparent) {for (i=0; i<=11; i+=1) {if (alarm[i] > 0) {alarm[i]+=1;} } } 

//Enemies
with (enemyparent)
{
    if (paused == 0)
    {
        pre_hsp = hspeed;
        pre_vsp = vspeed;
        pre_isp = image_speed;
        
        hspeed = 0;
        vspeed = 0;
        image_speed = 0;
        paused = 1;
    }
    
    for (i=0; i<=11; i+=1) {if (alarm[i] > 0) {alarm[i]+=1;} }
}

//Effects
with (effectsparent) {image_speed = 0;}
with (airbubble) {vspeed = 0;}
with (boss_energybar) {if (alarm[0] > 0) alarm[0]+=1;}

}

/* UnFreeze */
if (argument0 == false)
{

//Character
proto.paused = 0;
proto.image_speed = pre_isp;

proto_energy.image_speed = 1;

//Items
with (itemexplosion) {image_speed = pre_iexisp;}
with (itemparent) {image_speed = pre_iisp; paused = 0;}

//Character Bullets
with (bulletparent)
{
    image_speed = pre_bisp;
    paused = 0;
}

//Enemies
with (enemyparent)
{
    if (paused == 1)
    {
    paused = 0;
    hspeed = pre_hsp;
    vspeed = pre_vsp;
    image_speed = pre_isp;
    }
}

//Effects
with (effectsparent) {image_speed = misp;}
with (airbubble) {vspeed = mvsp;}

//Blocks
with (block) {if (variable_local_exists('pre_oisp')) image_speed = pre_oisp;}

}
