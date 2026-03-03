/**
 * 2 player pong game. One player controls using WASD another
 * using arrow keys. Practice using objects
 * @author YOUR NAME HERE
 * @version TODAY'S DATE
 */

Ball ball;

void setup()
{
  size(500, 500);
  
  //instantiate a new ball that starts somewhere
  //near the middle of the screen
  
  
  //make the paddles different colours to make
  //the boundary checks easier (sometimes
  //the boundary check for the left will
  //help the right paddle out and vice versa, even
  //after it should have gone through
  
  
  //scores start at 0
  score1 = 0;
  score2 = 0;
}

void draw()
{
  background(0);
  
  //display elements
  
  
  //move ball and check vertical boundary
  

  //check the horizontal edges for a score
  checkEdges();  
}

/**
 * checks whether the ball is at a specific edge
 */

void checkEdges()
{
  if(ball.checkAtEdge(0, width) == 1)
  {
    ball.reset(random(width/9, width*8/9), random(height/4, height*3/4));
  }
  if(ball.checkAtEdge(0, width) == -1)
  {
    ball.reset(random(width/9, width*8/9), random(height/4, height*3/4));
  }  
}
