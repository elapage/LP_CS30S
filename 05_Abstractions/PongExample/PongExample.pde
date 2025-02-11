/**
 * 2 player pong game. One player controls using WASD another
 * using arrow keys. Practice using objects
 * @author YOUR NAME HERE
 * @version February 11, 2025
 */

Ball ball;
int score1, score2;

Paddle left, right;

void setup()
{
  size(500, 500);
  
  ball = new Ball(200, 100);
  //make the paddles different colours to make
  //the boundary checks easier (sometimes
  //the boundary check for the left will
  //help the right paddle out and vice versa, even
  //after it should have gone through
  left = new Paddle(width/10, 100, #DB2763);
  right = new Paddle(width*9/10, 100, #00FFC5);
  
  //scores start at 0
  score1 = 0;
  score2 = 0;
}

void draw()
{
  background(0);
  
  //display elements
  ball.display();
  left.display();
  right.display();
  
  //move paddles
  movePaddles();
  
  //move ball and check vertical boundary
  ball.move();
  ball.checkAtBoundary(0, height);

  //check the horizontal edges for a score
  checkEdges();  
  
  //check to see if the ball has hit one of the paddles so that
  //it can bounce
  if(hitPaddle())
  {
    ball.bounce();
  }

  surface.setTitle("P1: " + score1 + " P2: " + score2);
}

void movePaddles()
{
  if(keyPressed)
  {
    //right baddle
    if(keyCode == UP)
    {
      right.moveUp(0);
    }
    else if(keyCode == DOWN)
    {
      right.moveDown(height);
    }
    
    //left paddle
    if(key == 'w' || key == 'W')
    {
      left.moveUp(0);
    }
    else if(key == 's' || key == 'S')
    {
      left.moveDown(height);
    }
  }
}

/**
 * checks whether the ball is at a specific edge
 */

void checkEdges()
{
  if(ball.checkAtEdge(0, width) == 1)
  {
    score1++;
    ball.reset(random(width/9, width*8/9), random(height/4, height*3/4));
  }
  if(ball.checkAtEdge(0, width) == -1)
  {
    score2++;
    ball.reset(random(width/9, width*8/9), random(height/4, height*3/4));
  }  
}

//check if the ball hits either of the paddles
boolean hitPaddle()
{
  boolean result = false;
  
  if(ball.intersect(left.getFillColour(), -1) || ball.intersect(right.getFillColour(), 1))
  {
    result = true;
  }
  
  return result;
}
