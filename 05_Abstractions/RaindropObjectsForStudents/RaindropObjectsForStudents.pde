/**
 * Practice using objects. There is no need to 
 * look at the Raindrop tab (all methods and functions
 * are described to you) but you can take a peak if you
 * would like!
 * Make a series of raindrops (in the video there are 3).
 * Make them fall and reset when they reach the bottom
 * @version date here!
 */
 
//declare your instances!
Raindrop r1;
Raindrop r2;

void setup()
{
  size(270, 480);
  //instantiate your instances
  
  r1 = new Raindrop(100, 2);
  r2 = new Raindrop(random(width), random(2, 5));
}

void draw()
{
  background(0);
  
  controlRaindrop(r1);
  controlRaindrop(r2);
}

void controlRaindrop(Raindrop currentRaindrop)
{
  currentRaindrop.display();
  currentRaindrop.move();
  
  //check to see if the raindrop's y is greater than the height
  //then reset if yes
  if(currentRaindrop.getY() > height)
  {
    currentRaindrop.resetY();
  }  
}
