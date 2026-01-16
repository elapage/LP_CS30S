/**
 * An example of how loops can help dynamically change 
 * an image
 */

final color CONE = #C3A898;
final color SCOOP = #FAD0CC;
final color BACKGROUND = #2B2B48;

final int CONE_WIDTH = 50;  //scoop radius is the same
final int CONE_HEIGHT = 75;

void setup()
{
  size(500, 500);
  noStroke();
}

void draw()
{
  //the start of the scoop
  float scoopY = height*3/4 - CONE_HEIGHT/2;
  
  background(BACKGROUND);
  
  
  //draw the cone
  fill(CONE);
  triangle(width/2 - CONE_WIDTH/2, height*3/4 - CONE_HEIGHT/2, width/2 + CONE_WIDTH/2, height*3/4 - CONE_HEIGHT/2, width/2, height*3/4+CONE_HEIGHT/2);
}
