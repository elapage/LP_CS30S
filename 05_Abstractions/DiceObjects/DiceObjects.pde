/**
 * Roll a set of dice. Will update to compare the
 * two die
 */

Die d1, d2;

void setup()
{
  size(800, 400);
  d1 = new Die(width/4, height/2);
  d2 = new Die(width/4*3, height/2);
}

void draw()
{
  background(#249389);
  d1.display();
  d2.display();
}

void keyPressed()
{
  d1.roll();
  d2.roll();
}
