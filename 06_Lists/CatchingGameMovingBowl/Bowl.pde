/**
 * Catching object
 */

class Bowl
{
  private float x, y;  //top (x, y)
  
  private final int SIZE = 100;
  private final color FILL = #FB9795;
  
  public Bowl(float xPos, float yPos)
  {
    x = xPos;
    y = yPos;
  }
  
  //mutator for the x to allow the bowl
  //to move with the mouse
  public void setX(float newX)
  {
    x = newX;
  }
  
  //display the bowl
  public void display()
  {
    noStroke();
    fill(FILL);
    arc(x, y, SIZE*1.5, SIZE, 0, PI);
  }
  
  //checks whether (otherX, otherY) is in
  //the approximate location of the bowl
  public boolean intersects(float otherX, float otherY)
  {
    //within this boundary
    float left = x-(SIZE+50)/2;
    float right = x+(SIZE+50)/2;
    float top = y;
    float bottom = y + SIZE/2;
    
    return (otherX >= left && otherX <= right && otherY >= top && otherY <= bottom);
  }
}
