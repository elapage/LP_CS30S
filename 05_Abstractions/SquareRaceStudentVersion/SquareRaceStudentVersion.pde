/**
 * An exercise on making functions. The 3 boxes "race" up the screen
 * from the bottom and stop when they get to the top. 
 * @author YOUR NAME
 * @version TODAY'S DATE
 */

final int SIZE = 25;

float disp1, disp2, disp3;
float y1, y2, y3;

void setup()
{
  size(300, 300);
  disp1 = random(1, 3);
  disp2 = random(1, 3);
  disp3 = random(1, 3);
  
  //boxes start at the bottom and go up to the top
  y1 = height-SIZE;
  y2 = height-SIZE;
  y3 = height-SIZE;

  noStroke();
}

void draw()
{
  background(255);
  
  //box 1
  fill(0);
  //fill in code here!
  
  //box 2
  fill(75);
  
  
  //box 3
  fill(150);
  
  
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
