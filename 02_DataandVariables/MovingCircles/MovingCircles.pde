/**
 * quick example of using variables
 * @version Oct 7 2024
 */

int xPosition;  //x position of the circle
int yPosition;

void setup()
{
  size(480, 270);
  
  //start the circle on the lefthand side
  xPosition = 0;
  
  yPosition = 0;
}

void draw()
{
  background(204);
  
  //moving circle
  circle(xPosition, height/2, 20);
  circle(width/2, yPosition, 20);
  
  //move the circle to the right by 1 each frame
  xPosition = xPosition + 1;
  
  //move the circle up by 2 points each frame
  yPosition = yPosition + 2;
}
