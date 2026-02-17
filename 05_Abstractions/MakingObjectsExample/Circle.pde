/**
 * Circle object represents a circle in Processing
 */
 
class Circle
{
  //define instance variables (PROPERTIES)
  private float x, y;  //centre (x, y) coordinate
  private float radius;
  private color fillColour = 255;  //initialized with the DEFAULT value
  private color strokeColour;
  
  //constructor - defines the starting properties
  //of this object
  public Circle(float startX, float startY, float startRad)
  {
    x = startX;
    y = startY;
    radius = startRad;
    strokeColour = 0;  //also initialized with a DEFAULT value
  }
  
  //displays the circle
  public void display()
  {
    stroke(strokeColour);
    fill(fillColour);
    circle(x, y, radius * 2);  
  }
  
  //change the stroke colour and the fill colour
  public void setStrokeColour(color newColour)
  {
    strokeColour = newColour;
  }
  
  public void setFillColour(color newColour)
  {
    fillColour = newColour;
  }
  
  //MUTATOR for the radius
  public void changeRadius(float value)
  {
    if(radius + value > 5 && radius + value < width/2)
    {
      radius += value;
    }
  }
  
}
