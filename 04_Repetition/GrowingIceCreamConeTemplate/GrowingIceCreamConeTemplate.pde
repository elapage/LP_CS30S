/**
 * An example of how loops can help dynamically change 
 * an image
 */

final color CONE = #C3A898;
final color SCOOP = #FAD0CC;
final color BACKGROUND = #2B2B48;

final int CONE_WIDTH = 50;  //scoop radius is the same
final int CONE_HEIGHT = 75;

int numberOfScoops;

void setup()
{
  size(500, 500);
  noStroke();
  
  numberOfScoops = 0;
}

void draw()
{
  //the start of the scoop
  float scoopY = height*3/4 - CONE_HEIGHT/2;
  
  background(BACKGROUND);
  
  //use a for-loop because we have a specific number we are counting
  //to (but not wrong to use a while-loop)
  for(int counter = 0; counter < numberOfScoops; counter++)
  {
    //draw one scoop
    fill(SCOOP);
    circle(width/2, scoopY - CONE_WIDTH/2 + 15, CONE_WIDTH);
    
    scoopY -= CONE_WIDTH/2;  //draw the next scoop up by the radius
                             //of the scoop
  }
  //draw the cone
  fill(CONE);
  triangle(width/2 - CONE_WIDTH/2, height*3/4 - CONE_HEIGHT/2, width/2 + CONE_WIDTH/2, height*3/4 - CONE_HEIGHT/2, width/2, height*3/4+CONE_HEIGHT/2);
}

void keyPressed()
{
  //get the number of scoops ONLY if the key pressed is
  //a number key (0 - 9)
  if(key >= '0' && key <= '9')
  {
    numberOfScoops = (int)(key - '0');
    //println(numberOfScoops);
  }
  
}
