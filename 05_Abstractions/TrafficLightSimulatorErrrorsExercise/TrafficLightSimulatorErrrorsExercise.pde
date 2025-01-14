/**
 * Debugging Exercise
 * There are **6** errors in the following program, mostly to do with the 
 * methods and functions. Fill out the sheet in the Notebook. I would recommend 
 * working with a friend but make sure both people fill out the sheet.
 *
 * This program should simulate traffic lights at a 4 way intersection. The North-South lights
 * are coordinated and the East-West lights are coordinated. When one set of lights are green, the other set
 * are red. When the first set changes to yellow, the second set doesn't change yet. Finally, once
 * the first set of lights are red, the other set changes to green, and the cycle continues.
 * This program is timed, therefore the lights should switch automatically every second.
 * 
 * @version Today's date here!
 */
 
//colours to be used - defined for ease
final color RED = #FF0000;
final color GREEN = #00FF00;
final color YELLOW = #FFFF00;
final color GRASS_FILL = #149D03;

//centre coordinates for each of the traffic lights
float northX, northY;
float southX, southY;
float eastX, eastY;
float westX, westY;

//the current states for each set of lights - whether they're red
//yellow or green
int stateEW, stateNS;

final float SIZE = 500/4;

void setup()
{
  size(500, 500);
  
  //preset the four traffic lights
  northX = width/2;
  northY = height/6;
  
  southX = width/2;
  southY = height*5/6;
  
  eastX = width*5/6;
  eastY = height/2;
  
  westX = width/6;
  westY = height/2;
  
  stateEW = 1;  //red
  stateNS = 3;  //green
}

void draw()
{
  background(GRASS_FILL);
  
  drawRoads;
  
  //draw the four traffic lights
  trafficLight(northX, northY, stateNS);
  trafficLight(southX, southY, stateNS);
  trafficLight(eastY, eastX, stateEW);
  trafficLight(westX, westY, stateEW);
  
  //every 60 frames (1 second), change the states
  if(frameCount % 60 == 0)
  {
    if(stateEW == 3)  //if the EW state is green, change it to yellow but don't change red
    {
      
      changeState(stateEW);
    }
    else if(stateNS == 3)  //if the NS state is green, change it to yellow but don't change red
    {
      stateNS = changeState(stateNS);
    }
    else
    {
      //change both states to the next state
      stateEW = changeState(stateEW);
      stateNS = changeState(stateNS);  
    }
  }
}

/**
 * draws the roads in the background
 */
 
void drawRoads()
{
  rectMode(CENTER);
  noStroke();
  fill(204);
  rect(width/2, height/2, width, height/6);
  rect(width/2, height/2, width/6, height);
}

/**
 * Draws a traffic light at a certain coordinate
 * @param float x the x-coordinate of the centre of the traffic light
 * @param float y the y-coordinate of the centre of the traffic light
 * @param int state the current state of the light (R, Y, or G)
 */

void trafficLight(float x, y, int state)
{
  //dark rectangle
  rectMode(CENTER);
  fill(0);
  rect(x, y, SIZE/3, SIZE);
  
  //red light
  fill(RED, getAlpha(state, RED));  //get the alpha for each colour!
  ellipse(x, y-SIZE/3, SIZE/6, SIZE/6);
  
  //yellow light
  fill(YELLOW, getAlpha(state, YELLOW));
  ellipse(x, y, SIZE/6, SIZE/6);
  
  //green light
  fill(GREEN, getAlpha(state));
  ellipse(x, y+SIZE/3, SIZE/6, SIZE/6);  
}

/**
 * Makes a decision of the opacity level of a light based on the traffic light's current 
 * state and which light is being drawn.
 * @param state the current state of that light
 * @param currentColour the colour of the light being drawn
 * @return the alpha value (255 for the "on" light; 100 for an "off" light
 */

getAlpha(int state, color currentColour)
{
  int alpha;
  //if the colour matches the state (Red -> 1, Yellow -> 2, Green -> 3), then the
  //colour is "full strength"
  if(state == 1 && currentColour == RED || state == 2 && currentColour == YELLOW || state == 3 && currentColour == GREEN)
  {
    alpha = 255;
  }
  else
  {
    //otherwise, dull the colour
    alpha = 100;
  }
  
  return alpha;
}

/**
 * changes the state of a light. The state changes from 3 to 2, 2 to 1, 
 * and then 1 back to 3
 * @param int currentState the current state of the light
 * @return the changed state
 */
 
int changeState(int currentState)
{
  currentState--;  //change the state
  //if the state is lower than 1, the state has to
  //go back to 3
  if(currentState < 1)
  {
    currentState = 3;
  }
  
  return currentState;
}
