int x;
int speed;

void setup()
{
  size(400, 400);
  //starts at the left
  x = 0;
  speed = 2;  //moves to the right by 2 to start
}

void draw()
{
  background(204);
  
  //draw the circle
  circle(x, height/2, 20);
  
  //move to the right
  x+=speed;
  
  //wrap around the screen when we get to the right edge
  if(x >= width || x < 0)
  {
    speed = speed * -1;  //flip the sign
  }
  
}
