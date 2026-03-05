/**
 * 2 player pong game. One player controls using WASD another
 * using arrow keys. Practice using objects
 * @author YOUR NAME HERE
 * @version TODAY'S DATE
 */

//create new instances of our objects by declarinig
//variables for those objects
Ball ball;
Paddle left, right;

int leftScore, rightScore;

void setup()
{
  size(500, 500);
  
  //instantiate a new ball that starts somewhere
  //near the middle of the screen
  ball = new Ball(200, 100);
  
  //make the paddles different colours to make
  //the boundary checks easier (sometimes
  //the boundary check for the left will
  //help the right paddle out and vice versa, even
  //after it should have gone through
  left = new Paddle(width/10, 100, #DB2763);
  right = new Paddle(width * 9/10, 100, #00FFC5);
  
  leftScore = 0;
  rightScore = 0;

}

void draw()
{
  background(0);
  
  //display elements
  ball.display();
  left.display();
  right.display();
  
  //move ball and check vertical boundary
  ball.move();
  ball.checkAtBoundary(0, height);

  //check the horizontal edges for a score
  checkEdges();  
  
  //move paddles
  paddleMovement();
  
  //check whether we should bounce
  playerIntersect();
  
  //display score
  surface.setTitle("Left: " + leftScore + " Right: " + rightScore);
}

/**
 * Checks whether either paddles touch the ball
 */
void playerIntersect()
{
  if(ball.intersect(left.getFill(), -1) || ball.intersect(right.getFill(), 1))
  {
    ball.bounce();
  }
}

/**
 * Checks to see if a key has been pressed and, if
 * so, if it is one of the keys that controls the
 * paddle
 */
void paddleMovement()
{
  if(keyPressed)
  {
    if(key == 'w')
    {
      left.moveUp();
    }
    if(key == 's')
    {
      left.moveDown();
    }    
    if(keyCode == UP)
    {
      right.moveUp();
    }    
    if(keyCode == DOWN)
    {
      right.moveDown();
    }     
  }
}

/**
 * checks whether the ball is at a specific edge
 */

void checkEdges()
{
  if(ball.checkAtEdge(0, width) == 1)  //right hand side
  {
    ball.reset(random(width/9, width*8/9), random(height/4, height*3/4));
    leftScore++;  //leftScore = leftScore + 1 OR leftScore += 1
  }
  if(ball.checkAtEdge(0, width) == -1)
  {
    ball.reset(random(width/9, width*8/9), random(height/4, height*3/4));
    rightScore++;
  }  
}
