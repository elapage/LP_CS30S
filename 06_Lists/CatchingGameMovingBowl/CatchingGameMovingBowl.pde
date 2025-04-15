/**
 * CS30S
 * Shows how the bowl moves with the mouse. Feel free 
 * to use!
 */

Bowl bowl;    //the item that catches the other items

void setup()
{
  size (500, 700);
  
  bowl = new Bowl(width/2, height*9/10);
}

void draw()
{
  background(#7C5E8C);
  
  bowl.display();
  bowl.setX(mouseX);
}
