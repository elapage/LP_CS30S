/**
 * Draws a "school of fish" - a set of the same
 * fish moving at the same pace
 * @version Dec 2
 */

final color BODY = #F09605;
final color WATER = #57C9E8;

final int SIZE = 40;

//the (x, y) position of the fish
int x;
int y;

void setup()
{
  size(480, 480);
  noStroke();
  
  //set the fish so that it's at the left hand edge at the top
  x = width-SIZE;
  y = SIZE;
}

void draw()
{
  background(#57C9E8);
  
  //draw the fish
  fill(BODY);
  ellipse(x, y, SIZE, SIZE);
  triangle(x+SIZE/2, y, x+SIZE, y+SIZE/2, x+SIZE, y-SIZE/2);
  
}
