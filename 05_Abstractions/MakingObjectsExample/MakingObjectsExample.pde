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

void setup()
{
  size(400, 400);
  
  test1 = new Circle(30, 100, 150);
  //make it start in the centre of the screen with a radius of 1/2 the width
  test2 = new Circle(width/2, height/2, width/2);
}

void draw()
{
  background(204);
  test2.display();
  test1.display();
  
  test2.changeRadius(-1);
}

void keyPressed()
{
  test1.setFillColour(color(random(255), random(255), random(255)));
  test1.setStrokeColour(color(random(255), random(255), random(255)));
}
