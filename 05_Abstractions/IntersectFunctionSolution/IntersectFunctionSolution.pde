/**
 * An exercise using and creating functions and methods
 * The "flag" is a large circle and the player is a small
 * rectangle. The flag starts at a random spot in the program
 * and the player starts at the centre. Each time the player 
 * intersects with the flag, the flag moves to a new random spot and 
 * the player resets to the centre.
 * (A) Complete the intersect function and call it in the appropriate spot
 * (B) There are other places that could use methods to help manage complexity
 *     and reduce repetition. Identify these places, create the methods, and call them!
 *
 * @version today's date!
 */

//constants for the sizes
final int FLAG_SIZE = 20;
final int PLAYER_SIZE = 5;

int x, y;          //the player's location
int flagX, flagY;  //the flag's location

void setup()
{
  size(400, 400);
  
  setPositions();  //set positions of the flag and the player

  noStroke();
}

void draw()
{
  background(204);
  
  //draw the flag
  fill(0);
  circle(flagX, flagY, FLAG_SIZE);
  
  //draw the "player"
  rectMode(CENTER);
  fill(255);
  square(x, y, PLAYER_SIZE);
  
  movePlayer();
  
  //check to see if the player intersects with the flag
  //boolean intersects = intersect(x, y, flagX, flagY);
  //if(intersects)
  if(intersect(x, y, flagX, flagY))
  {
    setPositions();
  }
}


/**
 * intersect function - returns whether or not the player has come
 * into any contact with the flag.
 * @return true - there is contact; false - no contact
 */
boolean intersect(int x1, int y1, int x2, int y2)
{
  return dist(x1, y1, x2, y2) <= FLAG_SIZE/2;
}
 
 
void setPositions()
{
  x = width/2;
  y = height/2;
  
  //set the flag in a random spot (slightly away from the edge)
  flagX = (int)random(width/10, width*9/10);
  flagY = (int)random(height/10, height*9/10);   
}

void movePlayer()
{
  //move the player using keys 
  //(not using the mousePressed method because we want smooth movement)
  if(keyPressed)
  {
    if(keyCode == UP)
    {
      y--;
    }
    else if(keyCode == DOWN)
    {
      y++;
    }
    else if(keyCode == LEFT)
    {
      x--;
    }
    else if(keyCode == RIGHT)
    {
      x++;
    }
  }  
}
