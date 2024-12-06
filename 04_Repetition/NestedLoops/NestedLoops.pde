/**
 * Create 3 rows of 4 circles
 * @version December 6
 */
final int MAX_CIRCLES = 4;
final int MAX_ROWS = 3;
final int SIZE = 80;

void setup()
{
  size(400, 400);
}

void draw()
{
  int numRows = 0;  //counter of the number of rows of circles drawn
  int y = SIZE;
  
  while(numRows < MAX_ROWS)  //draw 1 row of 4 circles 3x
  {
    //1 row of 4 circles
    int numOfCircles = 0;  //keeps track of the number of circles
    int x = SIZE;    
    
    //draw 4 exact circles spaced out
    while(numOfCircles < MAX_CIRCLES)
    {
      //draw the circle
      circle(x, y, SIZE);
      
      x+= SIZE;  //increase x for next circle
      
      numOfCircles++;
    }
    
    //increase the y for the next row
    y += SIZE;
    
    //increase my counter
    numRows++;
  }
}
