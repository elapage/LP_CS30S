/**
 * Change the background of the program from white to black
 * and back to white with a mouse click
 * @version October 22 2024
 */
 
color backgroundColour; 
 
void setup()
{
  backgroundColour = 255;
}

//even if you have no code in the draw() you still need it to make the
//program dynamic
void draw()
{
  background(backgroundColour);
}

void mousePressed()
{
  //change the colour - from black to white
  //backgroundColour = 255 - backgroundColour;  //flip-flops between 255 and 0!
  
  //change the colour - random colour (a colour is 3 values - R, G, B)
  backgroundColour = color(random(256), random(256), random(256));
}
