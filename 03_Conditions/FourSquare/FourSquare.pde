/** 
 *  The colour of the quadrants (represented by rectangles) change
 *  based on the position of the mouse
 *  @author LP
 */

final color TEAL = #1B998B;
final color PURPLE = #2D3047;
final color YELLOW = #fffd82;
final color PINK = #e84855;

//the fill colour of each quadrant (rectangle) changes based on
//the mouse position
color topLeft, topRight, bottomLeft, bottomRight;

void setup()
{
  size(480, 270);
  
  //starting colours (initializing the variables)
  topLeft = TEAL;
  topRight = PURPLE;
  bottomRight = YELLOW;
  bottomLeft = PINK;
  
  noStroke(); 
}

void draw()
{
  //check the position of the mouse to change the colours correctly
  if(mouseX > width/2 && mouseY < height/2)  //top right quadrant
  {
    topLeft = PINK;
    topRight = TEAL;
    bottomRight = PURPLE;
    bottomLeft = YELLOW;    
  }
  else if(mouseX > width/2 && mouseY > height/2)  //bottom right
  {
    topLeft = YELLOW;
    topRight = PINK;
    bottomRight = TEAL;
    bottomLeft = PURPLE;  
  }
  else if(mouseX < width/2 && mouseY > height/2)  //bottom left
  {
    topLeft = PURPLE;
    topRight = YELLOW;
    bottomRight = PINK;
    bottomLeft = TEAL;     
  }
  else  //top left
  {
    topLeft = TEAL;
    topRight = PURPLE;
    bottomRight = YELLOW;
    bottomLeft = PINK;    
  }
  
  //fill and draw each quadrant rectangle
  fill(topLeft);
  rect(0, 0, width/2, height/2);
  
  fill(topRight);
  rect(width/2, 0, width/2, height/2);
  
  fill(bottomLeft);
  rect(0, height/2, width/2, height/2);
  
  fill(bottomRight);
  rect(width/2, height/2, width/2, height/2);
}
