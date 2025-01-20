/** 
 * The argument for why we need objects...
 * @author LP
 * @version 2025
 */

//declare two circle objects and one rectangle
Circle c1;
Circle c2;
Rectangle r1;

void setup()
{
  size(480, 270);
  
  //initialize (instantiate) the circle - we are setting its properties
  c1 = new Circle();  //using default - (100, 100), radius of 20
  c2 = new Circle(width/2, height/2, 50);
   
  r1 = new Rectangle();

  
  rectMode(CENTER);
  noStroke();
}

void draw()
{
  background(#172A3A);
  
  fill(#09BC8A);
  circle(c1.getX(), c1.getY(), c1.getDiameter());
 
  fill(#75DDDD);
  circle(c2.getX(), c2.getY(), c2.getDiameter()); 

  //update rectangle's coordinate information
  r1.setX(mouseX);
  r1.setY(mouseY);
  
  fill(#f71735);
  rect(r1.getX(), r1.getY(), r1.getWidth(), r1.getHeight());
}
