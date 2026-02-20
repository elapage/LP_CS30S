/**
 * A shape that moves
 */

class Square
{
  private float x, y;  //centre (x, y)
  private float sideLength;
  
  public Square(float xPos, float yPos, float side)
  {
    x = xPos;
    y = yPos;
    sideLength = side;
  }
  
  public void display()
  {
    rectMode(CENTER);
    stroke(0);
    fill(255);
    square(x, y, sideLength);
    rectMode(CORNER);
  }
  
  //MUTATOR for x and y
  public void moveX(float steps)
  {
    x += steps;
  }
  
  public void moveY(float steps)
  {
    y += steps;
  }
  
  //ACCESSORS for the x
  public float getX()
  {
    return x;
  }

  public float getY()
  {
    return y;
  }  
}
