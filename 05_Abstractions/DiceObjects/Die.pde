/**
 * Die class
 */

class Die
{
  private int value;
  private float x, y;
  private final int DICE_SIZE = 200;
  private final PFont diceFont = loadFont("stanley.vlw");
  
  //basic constructor
  public Die(float xPosition, float yPosition)
  {
    value = (int)random(1, 7);
    x = xPosition;
    y = yPosition;
  }
  
  /**
   * mutator for the value
   */
  
  public void roll()
  {
    value = (int)random(1, 6);
  } 
  
  public void display()
  {
    //set the font
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    textFont(diceFont);
    
    //draw the rectangle
    fill(255);
    stroke(0);
    rect(x, y, DICE_SIZE, DICE_SIZE);  
    
    //draw the number
    fill(0);
    text(value, x, y);
  }
  
  public int compareTo(Die other)
  {
    return (this.value - other.value);
  }
}
