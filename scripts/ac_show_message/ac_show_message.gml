/// @description Show a message
/// @param {string} message 
/// @return true if condition is true, false otherwise
function ac_show_message() {	
	var description = argument[0];
	var passed = "message";

	_ac_add_test_result(description, passed);

	return passed;	
}
