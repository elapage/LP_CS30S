/**
 * Practicing making our own variables
 * Oct 28 2026
 */
//make a variable to move the circle horizontally to the right
int xPosition;  //DECLARATION STATEMENT

void setup()
{
  size(400, 400);
  
  //use an ASSIGNMENT STATEMENT to INITIALIZE the variable
  //start at the left edge
  xPosition = 0;  //"xPosition is assigned the value 0"
}

void draw()
{
  background(6, 220, 15);
  
  //draw the circle with the current value of xPosition
  circle(xPosition, height/2, 50);
  
  //change it by making a new assignment statement (that is - assign a new
  //value to xPosition)
  xPosition = xPosition + 4;  //take whatever is in xPosition and add by 1
}
