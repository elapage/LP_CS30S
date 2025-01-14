/**
 * An example of using methods to increase modularity
 * A simple example - a bouncing ball!
 * @author YOUR NAME
 * @version TODAY'S DATE
 */

final color BACKGROUND = #D7E6D0;
final color FILL = #A6CCA2;
final int SIZE = 32;

int displacement = 3;
int x = SIZE;

// Setup does not change
void setup() {
  size(480, 270);
  noStroke();
}

void draw() {
  background(BACKGROUND);

  drawBall();

  moveBall();

  //if we are at the edge, the ball will "bounce" - go opposite direction
  bounce();
}

void drawBall()
{
  //display the "ball"
  noStroke();
  fill(FILL);
  ellipse(x, height/2, SIZE, SIZE);  
}

void moveBall()
{
  //move the ball
  x = x + displacement;  
}

void bounce()
{
  // If we’ve reached an edge, reverse speed
  if ((x > width) || (x < 0)) {
    displacement = displacement * - 1;
  }  
}
