/**
 * Represents a "secret letter" on the board or a space
 */

class KeyBlock
{
  private int x, y;        //top left coordinate
  private color fillColour;
  private char character;  //character this block represents
  
  private final int SIZE = 50;
  private final color FILL_A = #5CA4A9;
  private final color FILL_Z = #B81365;
  
  //create the constructor(s)
  //constructor if the key entered is a letter
  public KeyBlock(int xPosition, int yPosition, char chara)
  {
    x = xPosition;
    y = yPosition;
    character = chara;
    
    //set the colour using the position in the alphabet
    float ratio = map((int)character, 97, 122, 0, 1);
    fillColour = lerpColor(FILL_A, FILL_Z, ratio);
  }
  
  //constructor if the key is a space
  public KeyBlock(int xPosition, int yPosition, color bg)
  {
    x = xPosition;
    y = yPosition;
    character = ' '; 
    fillColour = bg;  //set the fill colour to the background colour
  }  
  
  //display the rectangle
  public void display()
  {
    fill(fillColour);
    square(x, y, SIZE);
  }
  
  //the x position + the size
  public int getNextX()
  {
    return x + SIZE;
  }
  
  //gets the current y
  public int getY()
  {
    return y;
  }
  
  //gets y + size
  public int getNextY()
  {
    return y + SIZE;
  }
  
  //accessor - ACCESS the property
  public char getCharacter()
  {
    return character;
  }
  
}//end of KeyBlock
