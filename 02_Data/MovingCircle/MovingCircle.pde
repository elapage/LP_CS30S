/**
 * An example of moving an object with the mouse
 * @version Oct 8 2025
 */

void setup()
{
  //all the code that is needed to set up your
  //animation
  size(500, 500);
}

void draw()
{
  //called 60x per second - the code here is run 60 times per sec
  background(0);  //background is drawn first to cover up the
  //last draw's drawing

  //drawing a stick figure
  circle(mouseX, mouseY, 30);  //head
  
  //body (starts at the bottom of the head and is 35 in length)
  stroke(255);
  line(mouseX, mouseY + 15, mouseX, mouseY + 45);
  
  //legs (starts at the bottom point of the body)
  line(mouseX, mouseY + 45, mouseX - 10, mouseY + 55);  //left leg
  line(mouseX, mouseY + 45, mouseX + 10, mouseY + 55);  //right leg
  
  //draw arms starting at the middle
  line(mouseX, mouseY + 30, mouseX - 10, mouseY + 20);  //left arm
  line(mouseX, mouseY + 30, mouseX + 10, mouseY + 20);  //right arm
  
}
