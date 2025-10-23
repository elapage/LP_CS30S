/**
 * Circle and background changes colours based on the position of 
 * the mouse. Another example of using variables and constants.
 * @version Oct 23, 2025
 */

//colours will change throughout the lifecycle of the program, so
//they should be global (properties of the different elements of 
//the program)
color backgroundFill, circleFill;

/**
 * equivalent statements
 * color backgroundFill;
 * color circleFill;
 */

final int CIRCLE_SIZE = 50;
 
void setup()
{
  size(255, 255);
  
  //start with a black background and white circle
  backgroundFill = width;
  circleFill = 255 - width;
  
  noStroke();
}

void draw()
{
  background(backgroundFill);
  
  //local variable to help with colour calculations - it doesn't need
  //to exist outside our throughout the lifecycle of the program
  int distanceCentreToMouse = (int)dist(width/2, height/2, mouseX, mouseY);
  
  circleFill = distanceCentreToMouse;
  //background is the "opposite" or "reverse", such that the sum of
  // both colours will equal 255
  backgroundFill = width - distanceCentreToMouse;
  
  println(circleFill, backgroundFill);
  
  fill(circleFill);
  circle(width/2, height/2, CIRCLE_SIZE);
  
}
