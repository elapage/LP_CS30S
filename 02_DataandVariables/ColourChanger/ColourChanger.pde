/**
 * Changing a colour based on the position of the mouse
 * Oct 9 2024
 */
 
final int CIRCLE_SIZE = 75;

//what are the things that change in the program? Colour
color circleColour;      //the distance
color backgroundColour;  //255 - circleColour

//did have a variable for distance as it is also changing, but not needed

void setup()
{
  size(255, 255);
  noStroke();
  
  circleColour = 255;
  backgroundColour = 0;
}

void draw()
{
  //one colour is the distance, one colour is the inverse (255 - d)
  circleColour = (int)dist(mouseX, mouseY, width/2, height/2);
  backgroundColour = 255 - circleColour;
  
  background(backgroundColour);
  
  fill(circleColour);
  circle(width/2, height/2, CIRCLE_SIZE);
  
}
