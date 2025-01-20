/** 
 * The argument for why we need objects...
 * @author LP
 * @version 2018
 */


float c1X, c1Y, c1diam;  //Circle one stuff
float c2X, c2Y, c2diam;  //Circle two stuff
float r1X, r1Y, r1Width, r1Height;  //Rectangle's stuff

void setup()
{
  size(480, 270);
  
  //set circle 1's info
  c1X = 100;
  c1Y = 100;
  c1diam = 40;
  
  //set circle 2's info
  c2X = width/2;
  c2Y = height/2;
  c2diam = 100;
  
  //set the rectangle's info
  r1X = mouseX;
  r1Y = mouseY;
  r1Width = 20;
  r1Height = 20;
  
  rectMode(CENTER);
  noStroke();
}

void draw()
{
  background(#172A3A);
  
  fill(#09BC8A);
  ellipse(c1X, c1Y, c1diam, c1diam);
 
  fill(#75DDDD);
  ellipse(c2X, c2Y, c2diam, c2diam); 

  //update rectangle's coordinate information
  r1X = mouseX;
  r1Y = mouseY;
  
  fill(#f71735);
  rect(r1X, r1Y, r1Width, r1Height);
}
