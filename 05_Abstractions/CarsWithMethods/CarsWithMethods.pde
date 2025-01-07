/**
 * An example of using abstractions
 * Two cars. We will make them move!
 * @author 
 */

//constants for the colours
final color GRASS_COLOUR = #32de8a;
final color ROAD_COLOUR = #59656f;
final color CAR1 = #A2E8DD;
final color CAR2 = #C802FA;

void setup()
{
  size(500, 400);
  rectMode(CENTER);
}

void draw()
{
  background(GRASS_COLOUR);
  
  //road
  fill(ROAD_COLOUR);
  noStroke();
  
  rect(width/2, height/2, width/2, height);
  
  //car 1
  drawCar(width/3, height/2, CAR1);
  
  //car 2
  drawCar(width*2/3, height/2, CAR2);
}

/**
 * draws a silly little car with four square wheels. Each car
 * differs in position and colour
 * @param x  the centre x-value of the car
 * @param y  the centre y-value of the car
 * @param fillColour  the main body colour
 */
void drawCar(int x, int y, color fillColour)
{
  //create constants for the different aspects of the car.
  //not needed by the rest of the program so made local
  final int WHEEL_SIZE = 20;
  final int CAR_SIZE = 50;
  final int WHEEL_OFFSET = CAR_SIZE/4;
  
  //tires
  fill(0);
  rect(x-WHEEL_OFFSET, y-WHEEL_OFFSET, WHEEL_SIZE, WHEEL_SIZE);  //top left wheel
  rect(x+WHEEL_OFFSET, y-WHEEL_OFFSET, WHEEL_SIZE, WHEEL_SIZE);  //top right wheel
  rect(x-WHEEL_OFFSET, y+WHEEL_OFFSET, WHEEL_SIZE, WHEEL_SIZE);  //bottom left
  rect(x+WHEEL_OFFSET, y+WHEEL_OFFSET, WHEEL_SIZE, WHEEL_SIZE);  //bottome right
  
  //body
  fill(fillColour);
  rect(x, y, CAR_SIZE, CAR_SIZE);    
}
