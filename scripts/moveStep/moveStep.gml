// @desc asdf
// @param {player} obj

function moveStep(obj) {
	var newX = obj.x + obj.hsp;
	var newY = obj.y + obj.vsp;
	
	if (place_meeting(newX, obj.y, block)) {
		// find the new newX that is a pixel away from the block
		newX = obj.x;
		while (!place_meeting(newX + sign(obj.hsp), obj.y, block)) {
			newX = newX + sign(obj.hsp);
		}
		
		obj.hsp = 0;
	}
	
	obj.x = newX;
	
	if (place_meeting(obj.x, newY, block)) {
		// find the new newX that is a pixel away from the block
		newY = obj.y;
		while (!place_meeting(obj.x, newY + sign(obj.vsp), block)) {
			newY = newY + sign(obj.vsp);
		}
		
		obj.vsp = 0;
	}
	
	obj.y = newY;
}
