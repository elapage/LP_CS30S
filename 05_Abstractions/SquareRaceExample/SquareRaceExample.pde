/**
 * An exercise on making functions. The 3 boxes "race" down
 * to the bottom. The function is the moveBox() function that
 * takes the y value and the displacement to move the
 * boxes down
 */

final color BOX1 = #1F6768;
final color BOX2 = #EE2737;
final color BOX3 = #7DC2BF;
final color BACKGROUND = #F3EFE7;

RacingBox left, middle, right;

void setup()
{
  size(300, 300);

  left = new RacingBox(width/4, BOX1);
  middle = new RacingBox(width/2, BOX2);
  right = new RacingBox(width*3/4, BOX3);
  
  noStroke();
}

void draw()
{
  background(BACKGROUND);
  
  displayAndMoveBox(left);
  displayAndMoveBox(middle);
  displayAndMoveBox(right);
}

void displayAndMoveBox(RacingBox box)
{
  box.display();
  box.moveBox();
}
