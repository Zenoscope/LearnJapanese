
// quit if there are no results
if (testResultsCount < 1) return;

var color = draw_get_color();

// scale of the text for the buttons and the list of tests
var text_x_scale = 0.25;
var text_y_scale = 0.25;

// Draw Up Button
draw_set_color(c_white);
draw_button(upButtonX1, upButtonY1, upButtonX2, upButtonY2, !upButtonPressed);
draw_set_color(c_black);
var tx = upTextX;
var ty = upTextY;

if upButtonPressed
{
	tx += 2;
	ty += 2;
}

draw_text_transformed(tx, ty, "Scroll Up", text_x_scale, text_y_scale, 0);

// Draw Down Button
draw_set_color(c_white);
draw_button(downButtonX1, downButtonY1, downButtonX2, downButtonY2, !downButtonPressed);
draw_set_color(c_black);
var tx = downTextX;
var ty = downTextY;

if downButtonPressed
{
	tx += 2;
	ty += 2;
}

draw_text_transformed(tx, ty, "Scroll Down", text_x_scale, text_y_scale , 0);

// Print results
var outputLine = outputY;
for (var i = scrollStartIndex; i < array_height_2d(testResults); i++)
{
	if (testResults[i,1] == true)
	{
		draw_set_color(c_lime);
		draw_text_transformed(outputX, outputLine, "PASSED: " + testResults[i,0], text_x_scale, text_y_scale, 0);
	}
	else if (testResults[i,1] == false)
	{
		draw_set_color(c_red);
		draw_text_transformed(outputX, outputLine, "FAILED: " + testResults[i,0], text_x_scale, text_y_scale, 0);
	}
	else if (testResults[i,1] == "message")
	{
		draw_set_color(c_blue);
		draw_text_transformed(outputX, outputLine, "Message: " + testResults[i,0], text_x_scale, text_y_scale, 0);
	}
	
	outputLine += outputLineHeight;
}

// Return original draw color
draw_set_color(color);