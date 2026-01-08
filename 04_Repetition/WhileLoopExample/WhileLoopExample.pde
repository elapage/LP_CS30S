/**
 * An example of using while loops to reduce
 * code repetition
 * Moving gradient
 * @version January 6 2026
 */

final int SIZE = 10;  //size of the rectangle 
 
void setup()
{
  size(480, 270);
  noStroke();
}

void draw()
{
  int x = 0;  //the first rectangle starts at (0,0)
  
  background(255);
  
  //draw rectangles using a while loop
  while(x < width)
  {
    float distance;  //horizontal distance from this rectangle to the cursor
    
    //the distance from the rectangle to the cursor will be
    //the fill value (greyscale colour, darker the closer
    //the rectangle is to the cursor)
    distance = abs(mouseX - x);
    fill(distance);
    
    rect(x, 0, SIZE, height);
    
    //INCREMENT THE VARIABLE
    //x += SIZE;  //x = x + SIZE
  }
}
