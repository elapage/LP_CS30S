/**
 * A paddle object for the pong game.
 */
 
class Paddle
{
  //STEP 1 - think of the properties that your object has. These are probably
  //your instance variables
  private float x, y;  //centre coordinate
  private color paddleFill;
  private final int WIDTH = 20;
  private final int HEIGHT = 90;
  private final int SPEED = 3;
  
  //STEP 2 - define the constructor so you can initialize your instance variables
  //(some properties are set by you, some are set by the driver - that's a design choice!
  //constructor!!!!
  public Paddle(float xPos, float yPos, color fill)
  {
    x = xPos;
    y = yPos;
    paddleFill = fill;
  }
  
  //STEP 3 - what does the object do/can do? (IE what can we do with this object?
  //These are most likely your methods
  public void display()
  {
    rectMode(CENTER);
    noStroke();
    fill(paddleFill);
    rect(x, y, WIDTH, HEIGHT);
    
    //STEP 3.5 - at this point, make an instance of your object and see if it works! does
    //it look the way you want it to look?
  }
  
  //STEP 4 - now that it looks good, keep making methods! :) Next up - accessors and mutators
  public void moveUp(float boundary)
  {
    //so long as the top is not at the boundary, go up
    if(y - HEIGHT/2 > boundary)
    {
      y -= SPEED;
    }
  }
  
  public void moveDown(float boundary)
  {
    //so long as the bottom is not at the boundary, go down
    if(y + HEIGHT/2 < boundary)
    {
      y += SPEED;
    }
  }
  
  //ACCESSOR for the colour
  public color getFillColour()
  {
    return paddleFill;
  }
  
}//end of class
