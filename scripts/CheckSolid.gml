/*
CheckSolid(7,7);
arguments are x values
Checks either side for solid ground
*/

sl = argument0;
sr = argument1;

if (!collision_rectangle(x-sl,y-2,x+sr,y-1,block,true,true))
{
    return (true);
}

else if (collision_rectangle(x-sl,y-2,x+sr,y-1,block,true,true))
{
    if (collision_rectangle(x-sl,y-2,x+sr,y-1,block,true,true).issolid == 0 && 
        collision_rectangle(x-sl,y-2,x+sr,y-1,block,true,true).object_index != ladder_top)
    {
    return (true);
    }
    else {return (false);}
}

else
{
    return (false);
}