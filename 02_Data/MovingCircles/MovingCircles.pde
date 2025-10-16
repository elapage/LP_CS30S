/**
 * Practicing using variables to make things move
 * @version October 16, 2025
 */

//variable declarations are the only types of statements that can
//go outside of setup() and draw()
int x;  //x position of the circle
int y;  //y position of second circle

void setup()
{
  size(500, 500);
  
  //a good place to initialize variables!
  x = width;  //sets the circle to the far left
  
  y = height;
}

void draw()
{
  background(204);
  
  circle(x, height/2, 50);
  
  //make the circle move to the left by subtracting a value each time from x
  //(that value is the speed!)
  x = x - 1;
  
  //task 1 - change the circle to start at the right and move to the left
  //task 2 - create another circle that starts at the bottom and moves up
  
  circle(width/2, y, 50);
  
  y = y - 1;
}
