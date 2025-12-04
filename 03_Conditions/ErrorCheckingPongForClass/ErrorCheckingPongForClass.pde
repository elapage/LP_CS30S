/* Error Checking Exercise
 * A 1-player pong game
 * @author YOUR NAME HERE
 */
 
float paddleX;  //x position of the paddle
float x, y;     //coordinates of the ball
float dispx;    //the change in the ball (makes it move!)
float dispy;
int score;      //counts the number of times you hit the paddle

//Paddle constants
final int PADDLE_WIDTH = 150;
final int PADDLE_HEIGHT = 30;
final int DISP = 5;  //how much the paddle moves by

//ball constants
final int BALL_RADIUS = 30;
final int SPEED = 5;  //the speed of the ball

//colours used for the program
final color BG = #4a6c6f;
final color BALL = #ed474a;
final color PADDLE = #c0bcb5;


void setup()
{
  size(600, 500);
  noStroke();
  
  //set the rectangle mode to the center to make
  //drawing a little easier
  rectMode(CENTER);
  paddleX = width/2;  //start paddle at centre
  
  //start the ball at a random spot at the top
  x = random(width);
  y = BALL_RADIUS;
  //set the ball movement to the right and down
  dispx = SPEED;
  dispy = -1 * SPEED;
}

void draw()
{
  final int BOUNDARY = height-75;
  background(BG);
  
  //draw the paddle
  fill(PADDLE);
  rect(paddleX, BOUNDARY, PADDLE_WIDTH, PADDLE_HEIGHT, 4);
  
  //draw the ball
  fill(BALL);
  ellipse(x, y, BALL_RADIUS, BALL_RADIUS);
  
  //move the ball
  x = x + dispx;
  y = y + dispy;
  
  //if the ball is at either horizontal boundary,
  //change the direction of the horizontal movement
  if(x+BALL_RADIUS/2 >= width || x-BALL_RADIUS/2 <= 0)
  {
    dispx = dispx * -1;
  }

  //if the ball is at either vertical boundary,
  //change the direction of the vertical movement    
  if(y-BALL_RADIUS/2<= 0)
  {
    dispy = dispy * -1;
  }
  
  //if the ball has hit the paddle, change the
  //y direction and increase the score
  if(((x >= paddleX-PADDLE_WIDTH/2 && x <= paddleX + PADDLE_WIDTH/2)&&(y+BALL_RADIUS/2>=BOUNDARY-PADDLE_HEIGHT/2 && y-BALL_RADIUS/2 < BOUNDARY-PADDLE_HEIGHT)))
  {
    dispy = dispy * -1;
    score = score + 1;
  }

  //if the ball goes passed the paddle and hits the
  //bottom, reset the ball position and subtract
  //a value from the score
  if(y > height)
  {
    x = random(width);
    y = BALL_RADIUS;
    dispx = SPEED;
    dispy = -1*SPEED;  
    score = score - 1;
  }
    
  //move the paddle if the key is pressed (checked in
  //draw to give it continuous movement rather than
  //a move choppy effect that it would have in keyPressed)
  if(keyPressed)
  {
    if(keyCode == LEFT)
    {
      paddleX = paddleX - DISP;
    }
    else if(keyCode == RIGHT)
    {
      paddleX = paddleX + DISP;
    }
      
  }    
   
  //display the score
  surface.setTitle("Score: " + score);
}
