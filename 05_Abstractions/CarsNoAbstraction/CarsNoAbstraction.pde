/**
 * An example of using abstractions
 * Two cars. We will make them move!
 * @author 
 */

void setup()
{
  size(500, 400);
  rectMode(CENTER);
}

void draw()
{
  background(#32de8a);
  fill(#59656f);
  noStroke();
  
  //road
  rect(width/2, height/2, width/2, height);
  
  //car 1
  //wheels
  fill(0);
  rect(width/3-25, height/2-25, 20, 20);
  rect(width/3+25, height/2-25, 20, 20);
  rect(width/3-25, height/2+25, 20, 20);
  rect(width/3+25, height/2+25, 20, 20);
  
  //body
  fill(#A2E8DD);
  rect(width/3, height/2, 50, 50);
  
  //car 2
  fill(0);
  rect(width/3*2-25, height/2-25, 20, 20);
  rect(width/3*2+25, height/2-25, 20, 20);
  rect(width/3*2-25, height/2+25, 20, 20);
  rect(width/3*2+25, height/2+25, 20, 20);
  
  //body
  fill(#C05858);
  rect(width/3*2, height/2, 50, 50);  
}
