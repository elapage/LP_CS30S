/** 
 * The argument for why we need objects...
 * @author LP
 * @version Feb 10 2026
 */

Circle circle1;  //a new INSTANCE of the circle object
Circle circle2;
Rectangle rectangle;

void setup()
{
  size(480, 270);
  
  //INSTANTIATE (fancy way to say intialize for objects)
  circle1 = new Circle(100, 100, 40);
  circle2 = new Circle(width/2, height/2, 50);
  
  rectangle = new Rectangle(mouseX, mouseY, 20, 20);
  
  rectMode(CENTER);
  noStroke();
}

void draw()
{
  background(#172A3A);
  
  fill(#09BC8A);
  circle(circle1.getX(), circle1.getY(), circle1.getDiameter());
 
  fill(#75DDDD);
  circle(circle2.getX(), circle2.getY(), circle2.getDiameter()); 
 

  //update rectangle's coordinate information
  rectangle.setX(mouseX);
  rectangle.setY(mouseY);
  
  fill(#f71735);
  rect(rectangle.getX(), rectangle.getY(), rectangle.getWidth(), rectangle.getHeight());
}
