/**
 * Draws a box. The box moves up to the top and stops
 * when at the top
 */
 
class RacingBox
{
  //define all instance variables
  private float x, y;  //top left (x, y) coordinate
  private float speed;
  private color fillColour;
  private final int SIZE = 25;
  
  public RacingBox(float xPos, color fill)
  {
    //these variables are always set in the same way, so
    //no need for a parameter
    y = height - SIZE;
    speed = random(1, 3);
    
    //these values are defined by the calling class
    x = xPos;
    fillColour = fill;
  }
  
  public void display()
  {
    fill(fillColour);
    square(x, y, SIZE);
  }
  
  /**
   * this methods changes a box's y-position based on its position
   * on the screen. So long as the top of the box is lower than
   * the top of the screen, change the y by the displacement.
   * Otherwise, the y position should be at the top.
   * MUTATOR for the y value of the box
   *
   */
  
  void moveBox()
  {
    if(y-speed > 0)
    {
      //only move up if not at the top
      y -= speed;
    }
    else
    {
      y = 0;
    }
  }  
  
}
