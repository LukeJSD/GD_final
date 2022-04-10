/// @description Allocate xp into levels
// You can write your code in this editor
if (playerObj.xp >= playerObj.xp_landmark) {
	// menu option to choose stat to level
	stat_leveled = -1;
	switch (stat_leveled) {
		case 0:
			++playerObj.vitality;
			playerObj.xp = playerObj.xp - playerObj.xp_landmark;
			player.xp_landmark += 100;
			break;
		case 1:
			++playerObj.stength;
			playerObj.xp = playerObj.xp - playerObj.xp_landmark;
			player.xp_landmark += 100;
			break;
		case 2:
			++playerObj.dexterity;
			playerObj.xp = playerObj.xp - playerObj.xp_landmark;
			player.xp_landmark += 100;
			break;
		case 3:
			++playerObj.arcana;
			playerObj.xp = playerObj.xp - playerObj.xp_landmark;
			player.xp_landmark += 100;
			break;
		default:
			//None
	}
}