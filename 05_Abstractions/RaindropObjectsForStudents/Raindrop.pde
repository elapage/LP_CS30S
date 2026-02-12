/**
 * Raindrop object mimics a raindrop. It automatically
 * starts at the top at a user-defined x and speed. 
 * The raindrop can be moved and displayed. There
 * are other accessors and mutators available
 * to change the y
 */

public class Raindrop
{
  private float x;      //the centre x coordinate
  private float y;      //the top y coordinate
  private float speed;  //the speed the raindrop falls at
  
  //Constructor - create a new raindrop by defining
  //the x and the speed
  Raindrop(float x, float speed)
  {
    this.x = x;
    this.y = 0;
    this.speed = speed;
  }
  
  //mutator for the y value - change it by the speed
  void move()
  {
    y+=speed;
  }
  
  //accessor for the y value
  float getY()
  {
    return y;
  }
  
  //mutator for the y value to reset it back
  //to 0
  void resetY()
  {
    y = 0;
  }
    
  //display the drop
  void display()
  {
    int counter = 2;
    while(counter < 8)
    {
      noStroke();
      fill(#48C5F5);
      ellipse(x, y + counter*4, counter*2, counter*2);
      counter += 1;
    }      
  }
}
