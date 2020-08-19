/*
fade_to_room(room,startcode,endcode);
'room' is the room to fade to.
The 'startcode' and 'endcode' arguments are strings.
'startcode' will be executed at the start of the next room
'endcode' will be executed as the fade ends and destroys itself
*/

if (view_enabled) instance_create(view_xview,view_yview,fadeout_shift);
else instance_create(0,0,fadeout_shift);

with (fadeout_shift)
{
    whichroom = argument0;
    startcode = argument1;
    endcode = argument2;
}
