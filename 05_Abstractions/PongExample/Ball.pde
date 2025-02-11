/**
 * Ball class for Pong game
 */
 
class Ball
{
  private float x, y;  //centre coordinate of the ball
  private float dX, dY;  //change in position for ball
  
  private final int SIZE = 30;  //a ball is of size 30
  private final color FILL = #b0db43;
  
  public Ball(float x, float y)
  {
    this.x = x;
    this.y = y;
    
    //the user/driver doesn't need to know that we
    //have these variables for movement; therefore we set
    //the values
    randomizeDisplacements();
  }
  
  /**
   * moves the ball - mutator
   */
  public void move()
  {
    x += dX;
    y += dY;
  }
  
  /**
   * displays the ball - accessor
   */
  public void display()
  {
    noStroke();
    fill(FILL);
    ellipse(x, y, SIZE, SIZE);
  }
  
  /**
   * Checks if ball is at the horizontal boundaries (edge)
   * @returns -1 if the ball is at the left edge, +1 if the
   * ball is at the right edge, and 0 if it is not at an edge
   */
   
   public int checkAtEdge(int leftBoundary, int rightBoundary)
   {
     int result;
     
     if(x - SIZE/2 <= leftBoundary)  //ball is at left edge
     {
       result = -1;
     }
     else if(x + SIZE/2 >= rightBoundary)  //ball is at right edge
     {
       result = 1;
     }
     else  //not at an edge
     {
       result = 0;
     }
     
     return result;
   }
   
   /**
    * check if at the vertical boundaries (boundaries)
    * if so, bounce
    */
   
   public void checkAtBoundary(int min, int max)
   {
     if(y - SIZE/2 <= min || y + SIZE/2 >= max)
     {
       dY *= -1;
     }
   }
   
   /**
    * horizontal bounce
    */
   
   public void bounce()
   {
     dX *= -1;
   }
  
  /**
   * checks whether the ball intersects with a certain colour
   * in a certain direction
   * @param c the colour being searched for
   * @param dir -1 for left side, 1 for right side
   */ 
  
  public boolean intersect(color c, int dir)
  {
    color edge = get(((int)x+dir*SIZE/2+dir), (int)y);
    return (edge == c);
  }
 
 /**
  * reset the ball to a new x and y
  */
 
  public void reset(float newX, float newY)
  {
    this.x = newX;
    this.y = newY;
    //can also randomize the dX and dY (extension)
    randomizeDisplacements();
  }
  
  /**
   * randomizes the speeds (displacements)
   */
  
  private void randomizeDisplacements()
  {
    //automatically set the speeds to 2 to the right/down
    dX = 2;
    dY = 2;
    
    //randomly set the x direction speed to go left
    if((int)random(2) == 1)
      dX *= -1;
    
    //randomly set the y direction speed to go up
    if((int)random(2) == 1)
      dY *= -1;
  }
}
