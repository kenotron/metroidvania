// @desc Handles controls
// @param {index} player object

function inputControlStep(obj) {
	var KEY_JUMP = vk_space;
	var KEY_LEFT = vk_left;
	var KEY_RIGHT = vk_right;
	
	var isJump = keyboard_check_pressed(KEY_JUMP);
	var isLeft = keyboard_check(KEY_LEFT) ? 1 : 0;
	var isRight = keyboard_check(KEY_RIGHT) ? 1 : 0;
	
	var horizontalMove = isRight - isLeft;
	
	obj.hsp = horizontalMove * obj.walkSpeed;
	
	if (place_meeting(obj.x, obj.y + 1, block) && isJump) {
		obj.vsp = -obj.jumpSpeed;
	}
}