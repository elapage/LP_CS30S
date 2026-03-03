/**
 * A paddle representing a paddle used in Pong.
 * Controlled by the user
 */
 
class Paddle  //class header
{
  private float x, y;  //centre coordinate
  private color fill;
  
  private final int WIDTH = 20;
  private final int LENGTH = 90;
  private final int SPEED = 3;
  
  public Paddle(float xPos, float yPos, color paddleFill)
  {
    x = xPos;
    y = yPos;
    fill = paddleFill;
  }
  
  //displays a rectangle as the paddle
  public void display()
  {
    rectMode(CENTER);
    noStroke();
    fill(fill);
    rect(x, y, WIDTH, LENGTH);
  }
  
  //movement methods - MUTATORS
  public void moveUp()
  {
    y -= SPEED;
  }
  
  public void moveDown()
  {
    y += SPEED;
  }
  
  //accessor for the fill
  public color getFill()
  {
    return fill;
  }
  
}//end of the class NO CODE GOES BELOW HERE
