/**
 * An example of programming with event listeners
 * switches the background colour from white to black
 * @version Nov 13 2025
 */

//create a variable for the background since that property
//is changing
color backgroundFill; 
 
void setup()
{
  size(200, 200);
  
  backgroundFill = 0;
}

void draw()
{
  background(backgroundFill);
} 

void mousePressed()
{
  //change the background colour - from 0 to 255 or 255 to 0
  //backgroundFill = 255 - backgroundFill;
  
  //random colour
  backgroundFill = color((int)random(256), (int)random(256), (int)random(256));
}
