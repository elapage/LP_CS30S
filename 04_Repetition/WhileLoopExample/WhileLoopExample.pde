/**
 * Moving gradient (a series of 40 rectangles whose colour is determined by the
 * horizontal distance of the mouse to that rectangle)
 * Dec 2 2024
 */

final int SIZE = 10;  //width of the rectangle
 
void setup()
{
  size(400, 270);
  noStroke();
}

void draw()
{
  int x = 0;  //start rectangles on the lefthand side
  float distance;  //horizontal distance between each rectangle and the mouse
  
  //draw a series of rectangles, side by side, to the right edge
  while(x < width)
  {
    distance = mouseX - x;
    
    //use an if-statement to change a negative distance to a positive distance
    if(distance < 0)
    {
      distance *= -1;
    }
    
    //draw the rectangle
    fill(distance);
    rect(x, 0, SIZE, height);
    
    //change x for next rectangle
    x+=SIZE;
  }
}
