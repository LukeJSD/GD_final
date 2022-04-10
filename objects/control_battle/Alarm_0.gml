/// @description enemy attack
// You can write your code in this editor
roll = random(current_time)%20 + 1;
hit = roll + enemyObj.dexterity;
if (roll == 20 || hit >= 10 + playerObj.armor_mod + playerObj.dexterity + playerObj.strength) {
	// hit
	damage = enemyObj.character_weapon.base_damage + int64(enemyObj.strength/2);
	scale = (enemyObj.character_weapon.stat_scale == "s") ? enemyObj.strength : 
		(enemyObj.character_weapon.stat_scale == "d") ? enemyObj.dexterity :
		(enemyObj.character_weapon.stat_scale == "a") ? enemyObj.arcana : 0;
	damage += enemyObj.character_weapon.weapon_level * scale;
	playerObj.hp -= (roll==20) ? 2*damage : damage;
}