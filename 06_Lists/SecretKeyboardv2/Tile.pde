/**
 * holds all information for our square box that is placed on
 * the screen
 */
 
class Tile
{
  private int x, y;  //top left corner
  private char character;  //either a lower case letter or a space
  private color fillColour;
  
  private final int SIZE = 50;
  private final color FILL_A = #5CA4A9;
  private final color FILL_Z = #B81365;
  
  public Tile(int xPos, int yPos, char c)
  {
    x = xPos;
    y = yPos;
    character = c;
    calculateColour();
  }
  
  private void calculateColour()
  {
    if(character == ' ')
    {
      fillColour = 204;
    }
    else  //lowercase letter
    {
      float ratio;
      //map the pressed letter into the 0-1 range needed by lerpColor
      ratio = map(character, 'a', 'z', 0, 1);
      fillColour = lerpColor(FILL_A, FILL_Z, ratio);
    }  
  }
  
  public void display()
  {
    fill(fillColour);
    square(x, y, SIZE);
  }
  
  //accessors for the x, y and size
  public int getX()
  {
    return x;
  }
  
  public int getY()
  {
    return y;
  }
  
  public int getSize()
  {
    return SIZE;
  }
  
}
