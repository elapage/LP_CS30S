/**
 * Creating objects practice
 * Have a Flower object drawn in a "garden". They can grow
 * and they can shrink
 * Find the errors!
 */

//declare 2 flowers
Flower f1, f2;

//colour constants
color BACKGROUND_FILL = #25ced1;
color GROUND_FILL = #a3f7b5;

void setup()
{
  size(480, 270);
  noStroke();
  
  //initialize each flower
  f1 = new Flower(width/4, height/2, 3*height/4 - height/2, #8E4162, #EDA2C0);
  f2 = new Flower(width*3/4, height/2, 3*height/4 - height/2, #CC2936, #ebbab9);

  //checks if two flowers equal by the colour of the middle part
  //f1 == f2
  if(f1.getFlowerColour() == f2.getFlowerColour())
  {
    println("They are the same!");
  }
  else
  {
    println("The two flowers are not equal");
  }
}

void draw()
{
  background(BACKGROUND_FILL);
  
  //draw the ground
  fill(GROUND_FILL);
  rect(0, 3*height/4, width, 3*height/4);
  
  //display the three flowers
  f1.display();
  f2.display();
  
  //if a key is pressed, either grow that particular
  //flower or shrink all flowers until they cannot
  if(keyPressed)
  {
    if(key == '1')
    {
      f1.grow();
    }
    else if(key == '2')
    {
      f2.grow();  
    }
    else  //if any other key 
    {
      f1.shrink();
      f2.shrink();
    }
  }
}
