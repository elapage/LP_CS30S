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

  drawRoad();
  
  //car 1
  drawCar(width/3, height/2, #A2E8DD);
  
  //car 2
  drawCar(width/3*2, height/2, #C05858);
}

void drawCar(float x, float y, color bodyColour)
{
  //wheels
  fill(0);
  rect(x-25, y-25, 20, 20);
  rect(x+25, y-25, 20, 20);
  rect(x-25, y+25, 20, 20);
  rect(x+25, y+25, 20, 20);
  
  //body
  fill(bodyColour);
  rect(x, y, 50, 50);  
}

void drawRoad()
{
  fill(#59656f);
  noStroke();
  
  //road
  rect(width/2, height/2, width/2, height);  
}
