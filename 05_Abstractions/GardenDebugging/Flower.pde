/**
 * Flower class - draws and manages a flower
 */
 
class Flower
{
  private float x, y;    //coordinates of the flower
  private color flowerColour;  //colour of the middle part
  private color petalColour;  //colour of the petals
  private float stemSize;  //the size of the stems
  
  //constant values for the drawing of our object
  private final float PETAL_WIDTH = 10;
  private final float PETAL_HEIGHT = 20;
  private final int NUM_PETALS = 10;
  private final float SIZE = 25;
  private final color STEM_COLOUR = #09BC8A;
  
  public Flower(float xPos, float yPos, float stem, color fillFlower, color fillPetals)
  {
    x = xPos;
    y = yPos;
    flowerColour = fillFlower;
    petalColour = fillPetals;
    stemSize = stem;
  }

  /**
   * Displays the flower
   */  
  public void display()
  {
    //stem
    stroke(STEM_COLOUR);
    strokeWeight(5);
    line(x, y, x, y + stemSize);  //vertical line 
    
    //draw the petals - note there are no logic or syntax errors anywhere
    //in the drawing of the petals, that's just mean
    noStroke();
   
    //everything after this and before the pop will be rotated and translated
    pushMatrix();  
    fill(petalColour);
    translate(x, y);  //translate to the middle of the flower
    //draw a bunch of ellipses that have been rotated
    for(int i = 0; i<NUM_PETALS; i++)
    {
      rotate(PI/5);
      ellipse(0, SIZE/2, PETAL_WIDTH, PETAL_HEIGHT);
    }
    popMatrix();
    
    //the middle portion
    fill(flowerColour);
    ellipse(x, y, SIZE, SIZE);
  }
  
  /**
   * This "grows" the flower - meaning the flower portion moves
   * up the screen and the stem increases
   */
  
  public void grow()
  {
    y--;
    stemSize++;
  }
  
  public void shrink()
  {
    if(stemSize > 0) 
    {
      y++;
      stemSize--;
    }
  }
  
  public color getFlowerColour()
  {
    return flowerColour;
  }
}
