/**
 * Exercise 2.3 - Rocket ship solution
 * Practices using and creating variables
 * @version Oct 17 2025
 */


final int SIZE = 15;
final float ACCELERATION = 0.1;

float y;  //the y-coorindate of the position of the "rocket"
float speed;  //the speed of the rocket

void setup()
{
  size(100, 700);
  
  y = height;
  //setting the mode of drawing the rectangle from the center
  //float speed;
  speed = 0;
  rectMode(CENTER);
}

void draw()
{
  background(0);
  
  square(width/2, y - SIZE/2, SIZE);
  y = y - speed;  //make the y position change
  
  //to create acceleration, change the speed
  speed = speed + ACCELERATION;
}
