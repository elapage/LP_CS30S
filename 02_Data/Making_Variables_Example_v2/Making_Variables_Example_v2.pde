/**
 * Practicing making our own variables
 * Oct 28 2026
 * EDITTED Nov 4 - added constants
 */
//make a variable to move the circle horizontally to the right
int xPosition;  //DECLARATION STATEMENT

//constants - used for values that do not change
final int CIRCLE_SIZE = 25;
final int SPEED = 1;

final color BACKGROUND = color(6, 220, 15);
final color INNER_CIRCLE_COLOUR = color(254, 10, 255);
final color OUTER_CIRCLE_COLOUR = color(17, 63, 55);

void setup()
{
  size(400, 400);
  
  //use an ASSIGNMENT STATEMENT to INITIALIZE the variable
  //start at the left edge
  xPosition = 0;  //"xPosition is assigned the value 0"
}

void draw()
{
  background(BACKGROUND);
  
  //draw the circle with the current value of xPosition
  fill(OUTER_CIRCLE_COLOUR);
  circle(xPosition, height/2, CIRCLE_SIZE);
  fill(INNER_CIRCLE_COLOUR);
  circle(xPosition, height/2, CIRCLE_SIZE/2);
  
  //change it by making a new assignment statement (that is - assign a new
  //value to xPosition)
  xPosition = xPosition + SPEED;  //take whatever is in xPosition and add by 1
}
