/// @description health bar
// You can write your code in this editor
player_hp_per = (playerObj.hp/playerObj.hp_max) * 100;
draw_healthbar(0, 100, 500, 200, player_hp_per, c_black, c_red, c_lime, 0, true, true);

enemy_hp_per = (enemyObj.hp/enemyObj.hp_max) * 100;
draw_healthbar(1000, 100, 1500, 200, enemy_hp_per, c_black, c_red, c_lime, 1, true, true);
