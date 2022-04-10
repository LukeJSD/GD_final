/// moving and actions with player

var keyleft = keyboard_check(vk_left);
var keyright = keyboard_check(vk_right);
var keyup = keyboard_check(vk_up);
var keydown = keyboard_check(vk_down);

var move = keyright - keyleft;
var vmove = keydown - keyup;

hsp = spd * move;
vsp = spd * vmove;

x += hsp;
y += vsp;
