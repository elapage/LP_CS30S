/**
 * Wraps a moving object around the screen so that one it disappears
 * off one side, it will reappear on the other side
 * @version Nov 14 2025
 */
 
int xPos; 
int yPos;
final int SIZE = 20;
 
void setup()
{
  size(400, 200);
  
  //circle starts on the left side
  xPos = 0;
  
  //second circle starts at the bottom
  yPos = height;
}

void draw()
{
  background(204);
  
  //draws the 2 circles
  circle(xPos, height/2, SIZE);
  circle(width/2, yPos, SIZE);
  
  //move the circles
  xPos = xPos + 1;   //move across the screen
  yPos = yPos -1;  //moving up the screen
  
  //checking to see if the first circle is past the right boundary
  if (xPos > width+SIZE)
  {
    //reset the x position back to the start (0)
    xPos = -SIZE;
  }
  
  //check to see if the second circle is at the top
  if (yPos < -SIZE)
  {
    yPos = height+SIZE;
  }
  
}
 
