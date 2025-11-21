/**
 * Wraps a moving object around the screen so that one it disappears
 * off one side, it will reappear on the other side
 * @version Nov 14 2025
 */
 
int xPos; 
int speed;  //how much the circle is moving and the direction

final int SIZE = 20;
 
void setup()
{
  size(400, 200);
  
  //circle starts on the left side
  xPos = SIZE/2;
  speed = 2;  //moves by 1 to the right
}

void draw()
{
  background(204);
  
  //draws the circle
  circle(xPos, height/2, SIZE);
  
  //move the circles
  xPos = xPos + speed;   //move across the screen
  
  //when do I want the speed to change? - when I hit the edge
  //right edge - xPos > width
  // left edge - xPos < 0
  if(xPos > width-SIZE/2 || xPos < SIZE/2)
  {
    speed *= -1;   //speed = -speed;
  }
  
}
 
