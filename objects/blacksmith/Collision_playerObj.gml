/// @description improve weapon
// You can write your code in this editor
if (playerObj.xp >= 100*playerObj.player_weapon.weapon_level) {
	++playerObj.player_weapon.weapon_level;
	playerObj.xp = playerObj.xp - 100*(playerObj.player_weapon.weapon_level-1);
	
