// @desc Performs a gravity step for objects
// @param {index} any object

#macro gravityForce 0.7;

function gravityStep(obj){
	obj.vsp = obj.vsp + gravityForce;
}