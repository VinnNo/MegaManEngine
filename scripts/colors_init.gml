/*
colors_init();
Called at game start; initiates all color variables
*/

//Outlines
global.frame_0 = make_color_rgb(5,5,5);
global.frame_1 = make_color_rgb(148,0,140); //charging 1
global.frame_2 = make_color_rgb(104,72,252); //charging 2
global.frame_3 = make_color_rgb(156,120,252); //charging 3
//Charged
global.frame_c1 = make_color_rgb(188,188,188);
global.frame_c2 = make_color_rgb(220,40,0);
global.head_c1 = make_color_rgb(5,5,5);
global.head_c2 = make_color_rgb(188,188,188);
global.body_c1 = make_color_rgb(220,40,0);
global.body_c2 = make_color_rgb(5,5,5);
//Proto
global.head_w0 = make_color_rgb(220,40,0);
global.body_w0 = make_color_rgb(188,188,188);
//Stone
global.head_w1 = make_color_rgb(136,20,0);
global.body_w1 = make_color_rgb(248,248,248);
//Gravity
global.head_w2 = make_color_rgb(216,0,204);
global.body_w2 = make_color_rgb(248,248,248);
//Crystal
global.head_w3 = make_color_rgb(0,232,216);
global.body_w3 = make_color_rgb(248,248,248);
//Charge
global.head_w4 = make_color_rgb(248,120,88);
global.body_w4 = make_color_rgb(248,248,248);
//Napalm
global.head_w5 = make_color_rgb(104,72,252);
global.body_w5 = make_color_rgb(255,160,68);
//Wave
global.head_w6 = make_color_rgb(0,120,248);
global.body_w6 = make_color_rgb(248,248,248);
//Star
global.head_w7 = make_color_rgb(228,92,16);
global.body_w7 = make_color_rgb(248,184,0);
//Gyro
global.head_w8 = make_color_rgb(0,168,0);
global.body_w8 = make_color_rgb(248,248,248);
//Arrow
global.head_w9 = make_color_rgb(0,89,254);
global.body_w9 = make_color_rgb(0,217,254);

//Current
global.frame = global.frame_0;
global.head = global.head_w0;
global.body = global.body_w0;