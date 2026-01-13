/**
 * Make a grid of circles
 * @version Jan 13 2025
 */
 
final int CIRCLE_SIZE = 50; 
final int CIRCLES_PER_ROW = 4;
final int NUMBER_OF_ROWS = 3;
 
void setup()
{
  size(400, 400);
}

void draw()
{
  int y = CIRCLE_SIZE;
  int rowCounter = 0;
  
  //repeat drawing a row to make multiple rows (grid effect)
  while(rowCounter < NUMBER_OF_ROWS)  
  {
    int x = CIRCLE_SIZE;  //start the circle at the left edge
    int circleCounter = 0;
    //use a counter to draw a specific number of circles in the row
    while(circleCounter < CIRCLES_PER_ROW)
    {
      circle(x, y, CIRCLE_SIZE);
      
      //update the x value for the next circle
      x += CIRCLE_SIZE;
      
      //update the counter
      circleCounter++;  //same as circleCounter += 1
    }//end of one row
    
    //update the y value for the next row
    y += CIRCLE_SIZE;
    
    //update row counter
    rowCounter++;
  }
}
