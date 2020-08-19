/*
colors_swap('normal');
argument0 determines which color set to switch to 
(variables initialized in the "colors_init()" script).
*/

if (argument0 == 'charging1') {global.frame = global.frame_1;}
if (argument0 == 'charging2') {global.frame = global.frame_2;}
if (argument0 == 'charging3') {global.frame = global.frame_3;}

if (argument0 == 'charged1')
{
    global.frame = global.frame_c1;
    global.head = global.head_c1;
    global.body = global.body_c1;
}
if (argument0 == 'charged2')
{
    global.frame = global.frame_c2;
    global.head = global.head_c2;
    global.body = global.body_c2;
}

if (argument0 == 'normal')
{
    global.frame = global.frame_0;
    global.head = global.head_w0;
    global.body = global.body_w0;
}
if (argument0 == 'stone')
{
    global.frame = global.frame_0;
    global.head = global.head_w1;
    global.body = global.body_w1;
}
if (argument0 == 'gravity')
{
    global.frame = global.frame_0;
    global.head = global.head_w2;
    global.body = global.body_w2;
}
if (argument0 == 'crystal')
{
    global.frame = global.frame_0;
    global.head = global.head_w3;
    global.body = global.body_w3;
}
if (argument0 == 'charge')
{
    global.frame = global.frame_0;
    global.head = global.head_w4;
    global.body = global.body_w4;
}
if (argument0 == 'napalm')
{
    global.frame = global.frame_0;
    global.head = global.head_w5;
    global.body = global.body_w5;
}
if (argument0 == 'wave')
{
    global.frame = global.frame_0;
    global.head = global.head_w6;
    global.body = global.body_w6;
}
if (argument0 == 'star')
{
    global.frame = global.frame_0;
    global.head = global.head_w7;
    global.body = global.body_w7;
}
if (argument0 == 'gyro')
{
    global.frame = global.frame_0;
    global.head = global.head_w8;
    global.body = global.body_w8;
}
if (argument0 == 'arrow')
{
    global.frame = global.frame_0;
    global.head = global.head_w9;
    global.body = global.body_w9;
}