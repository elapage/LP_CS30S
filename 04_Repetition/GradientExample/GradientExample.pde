/**
 * Gradient exercise solution
 * Creates a better gradient than what we made before
 * @version Jan 13 2025
 */

final color STARTING_COLOUR = #a917b1;
final color FINAL_COLOUR = #781222;

void setup()
{
  size(200, 256);
}

void draw()
{
  int y = 0;  //start drawing lines from the top
  
  //draw lines down the screen
  while(y < height)
  {
    float ratio = map(y, 0, height, 0, 1);
    color strokeColour = lerpColor(STARTING_COLOUR, FINAL_COLOUR, ratio);
    
    //stroke(y);  //Progression 1
    //stroke(y, 255, 43);  //Progression 2
    stroke(strokeColour);  //Progression 3
    line(0, y, width, y);
    
    y += 1;
  }
}
