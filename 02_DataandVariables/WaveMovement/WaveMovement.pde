/**
 * using arithmetic expressions and identifying
 * places for constants.
 * Remember that mathematical functions are available
 * on processing.org/reference!
 * @version Oct 15
 */

float x, y;

//random hex values should be a constant!
final color CIRCLE_COLOUR = #C20095;

void setup()
{
  size(1000, 300);

  //preset the value for x and y
  x = 0;
  y = height;
}
 
void draw()
{ 
  //constants to help the readability of the arithmetic expression below
  //note - these constants need to be defined here since they cannot be global
  final float AMPLITUDE = height/4;
  final float PERIOD = 0.05;
  final float VERTICAL_SHIFT = height/2;
  
  background(255);

  //the circle will move in a wave thanks to the sine function!
  x += 1;
  y = AMPLITUDE*sin(PERIOD*x)+VERTICAL_SHIFT;
  
  fill(CIRCLE_COLOUR);
  ellipse(x, y, 50, 50);
}
