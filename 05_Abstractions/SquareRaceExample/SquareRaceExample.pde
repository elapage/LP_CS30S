/**
 * An exercise on making functions. The 3 boxes "race" down
 * to the bottom. The function is the doMove() function that
 * takes the y value and the displacement to move the
 * boxes down
 */

final color BOX1 = #1F6768;
final color BOX2 = #EE2737;
final color BOX3 = #7DC2BF;
final color BACKGROUND = #F3EFE7;

final int SIZE = 25;

float disp1, disp2, disp3;
float y1, y2, y3;

void setup()
{
  size(300, 300);
  disp1 = random(1, 3);
  disp2 = random(1, 3);
  disp3 = random(1, 3);
  
  y1 = height-SIZE;
  y2 = height-SIZE;
  y3 = height-SIZE;
  
  noStroke();
}

void draw()
{
  background(BACKGROUND);
  
  fill(BOX1);
  //using a method even with global variables otherwise we have 
  //quite a  bit of repeated code
  y1 = moveBox(y1, disp1);  
  rect(width/4, y1, SIZE, SIZE);
  
  fill(BOX2);
  y2 = moveBox(y2, disp2);
  rect(width/2, y2, SIZE, SIZE);
  
  fill(BOX3);
  y3 = moveBox(y3, disp2);
  rect(width*3/4, y3, SIZE, SIZE);

}

/**
 * this methods changes a box's y-position based on its position
 * on the screen. So long as the top of the box is lower than
 * the top of the screen, change the y by the displacement.
 * Otherwise, the y position should be at the top
 *
 * @param float yPosition     The y position of the box
 * @param float displacement  The displacement of a box
 * @return The new y position
 */

float moveBox(float yPosition, float displacement)
{
  if(yPosition-displacement > 0)
  {
    yPosition -= displacement;
  }
  else
  {
    yPosition = 0;
  }
  
  return yPosition;
}
