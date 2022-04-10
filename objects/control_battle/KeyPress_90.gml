/// @description light attack
// You can write your code in this editor
roll = random(current_time)%20 + 1;
hit = roll + playerObj.dexterity + 2;
if (roll == 20 || hit >= 10 + enemyObj.armor_mod + enemyObj.dexterity + enemyObj.strength) {
	// hit
	damage = playerObj.character_weapon.base_damage + int64(playerObj.strength/2);
	scale = (playerObj.character_weapon.stat_scale == "s") ? playerObj.strength : 
		(playerObj.character_weapon.stat_scale == "d") ? playerObj.dexterity :
		(playerObj.character_weapon.stat_scale == "a") ? playerObj.arcana : 0;
	damage += playerObj.character_weapon.weapon_level * scale;
	damage = int64(damage*0.75);	// light attack damage reduction
	enemyObj.hp -= (roll==20) ? 2*damage : damage;
}

alarm_get(0);