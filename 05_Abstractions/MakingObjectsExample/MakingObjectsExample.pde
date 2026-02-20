/**
 * An example of making and using our own objects. Making very basic
 * objects - a Circle and a Rectangle
 * @version Feb 17 2026
 */
 
//this (the first tab) is our DRIVER CLASS. This is the only
//tab that has a setup() and a draw()

Circle test1;
//create a new instance of circle
Circle test2;

Square sq1;
Square sq2;
Square sq3;

int stepsFor2;

void setup()
{
  size(400, 400);
  
  test1 = new Circle(30, 100, 150);
  //make it start in the centre of the screen with a radius of 1/2 the width
  test2 = new Circle(width/2, height/2, width/2);
  
  sq1 = new Square(width/2, height/2, 25);
  sq2 = new Square(0, random(height), 50);
  sq3 = new Square(mouseX, mouseY, 30);
  
  stepsFor2 = 2;
}

void draw()
{
  background(204);
  test2.display();
  test1.display();
  
  test2.changeRadius(-1);
  
  sq1.display();
  moveSquareWithKeys();
  
  //move this square autonomously to the right
  sq2.display();
  sq2.moveX(stepsFor2);
  if(sq2.getX() < 0 || sq2.getX() > width)
  {
    stepsFor2 *= -1;
  }
  
  sq3.display();
  moveSquareWithMouse();
}

void moveSquareWithMouse()
{
  //the change value is the difference between
  //the current mouse position and the previous mouse
  //position
  sq3.moveX(mouseX - pmouseX);
  sq3.moveY(mouseY - pmouseY);
}

void moveSquareWithKeys()
{
  //mouse the square with the arrow keys
  if(keyPressed)
  {
    if(keyCode == UP)
    {
      sq1.moveY(-2);
    }
    else if(keyCode == DOWN)
    {
      sq1.moveY(2);
    }
    else if(keyCode == RIGHT)
    {
      sq1.moveX(2);
    }
    else if(keyCode == LEFT)
    {
      sq1.moveX(-2);
    }
  }
}

void keyPressed()
{
  //change the corner circle with the space keys
  if(key == ' ')
  {
    test1.setFillColour(color(random(255), random(255), random(255)));
    test1.setStrokeColour(color(random(255), random(255), random(255)));
  }
}
