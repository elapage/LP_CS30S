/** 
 *  The colour of the quadrants (represented by rectangles) change
 *  based on the position of the mouse
 *  An example of an if-else if
 */

final color TEAL = #9ADBC5;
final color PURPLE = #E49CE5;
final color YELLOW = #DFDD6C;
final color PINK = #F886AB;

color quad1, quad2, quad3, quad4;

void setup()
{
  size(480, 270);
  //starting colours
  quad1 = PURPLE;
  quad2 = TEAL;
  quad3 = PINK;
  quad4 = YELLOW;
  noStroke(); 
}

void draw()
{
  //check the mouse location; change the colours depending on the quadrant
  if(mouseX < width/2 && mouseY < height/2)//quadrant 1 - top left
  {
    //starting colours
    quad1 = PURPLE;
    quad2 = TEAL;
    quad3 = PINK;
    quad4 = YELLOW;    
  }
  else if(mouseX > width/2 && mouseY < height/2)  //quadrant 2 (top right)
  {
    quad1 = YELLOW;
    quad2 = PURPLE;
    quad3 = TEAL;
    quad4 = PINK;        
  }
  else if(mouseX > width/2 && mouseY > height/2)  //quadrant 3 (bottom right)
  {
    quad1 = PINK;
    quad2 = YELLOW;
    quad3 = PURPLE;
    quad4 = TEAL;          
  }
  else
  {
    
    quad1 = TEAL;
    quad2 = PINK;
    quad3 = YELLOW;
    quad4 = PURPLE;         
  }

  //fill and draw each quadrant rectangle
  fill(quad1);
  rect(0, 0, width/2, height/2);
  
  fill(quad2);
  rect(width/2, 0, width/2, height/2);
  
  fill(quad4);
  rect(0, height/2, width/2, height/2);
  
  fill(quad3);
  rect(width/2, height/2, width/2, height/2);
}
