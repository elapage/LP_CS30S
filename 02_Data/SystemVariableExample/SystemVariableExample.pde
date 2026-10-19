/**
 * This program draws a gradient using rectangles and arithmetic expressions
 * and system variables.
 * Class example
 * Oct 16, 2026
 */
 
size(200, 500);
noStroke();

//first rectangle, has darkest colour
fill(255, 0, 255);
rect(0, 0, width, height/5);

//second rectangle, appears just below first rectangle
fill(225, 0, 225);
rect(0, height/5, width, height/5);

//third rectangle, appears just below second rectangle
fill(205, 0, 205);
rect(0, 2 * height/5, width, height/5);

//continue with this pattern
fill(185, 0, 185);
rect(0, 3 * height/5, width, height/5);

//continue with this pattern
fill(165, 0, 165);
rect(0, 4 * height/5, width, height/5);
