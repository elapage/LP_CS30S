/**
 * This is a program that will display keys pressed as coloured boxes. The colours
 * are calculated based on where in the alphabet that letter is. Display
 * the secret message.
 * @version Dec 4 2025
 */

//keep track of the position (x, y) for the next box
int nextX, nextY;

String secretMessage;

final int SIZE = 50;
final color FILL_A = #5CA4A9;
final color FILL_Z = #B81365;
 
void setup()
{
  size(500, 500);
  
  //start our boxes at (0, 0)
  nextX = 0;
  nextY = 0;
  
  secretMessage = "";  //set to an empty String - no message
  
  noStroke();
}

void keyPressed()
{
  color squareFill;  //dependent on the key pressed
  float ratio;  //the mapped value of our key between 0 and 1
  
  //check if it is a letter or a space
  //PRE-CONDITION: only concerned with lowercase letters
  if(key == ' ' || (key >= 'a' && key <= 'z'))
  {
    if(key == ' ')
    {
      squareFill = 204;
    }
    else  //lowercase letter
    {
      //map the pressed letter into the 0-1 range needed by lerpColor
      ratio = map(key, 'a', 'z', 0, 1);
      squareFill = lerpColor(FILL_A, FILL_Z, ratio);
    }
    //draw a box at the next position
    fill(squareFill);
    square(nextX, nextY, SIZE);
    
    //set the position for the next box
    nextX = nextX + SIZE;
    
    //when we reach the end of this line (past the width), go to
    //next line
    if(nextX >= width)
    {
      nextY = nextY + SIZE;
      nextX = 0;  //reset x position to 0
    }
    
    //join the character to my current string
    //concatenating the character to the current string
    secretMessage = secretMessage + key;
  }
  else if(key == ENTER)
  {
    //display the secret message
    println(secretMessage);
    
    //clear the screen
    background(204);
    //reset the box positions to the start
    nextX = 0;
    nextY = 0;
    //reset my string to no message
    secretMessage = "";
  }
  else if(key == BACKSPACE)
  {
    //what does it mean to backspace? We aren't removing
    //but rather "drawing over"
    
    //so long as both x and y don't equal 0
    if(nextX != 0 || nextY != 0)
    {
      //set the x back one space to draw over the previous
      //box
      nextX = nextX - SIZE;
      
      //check if past the left boundary; if so, cover
      //up the last box
      if(nextX < 0)
      {
        nextX = width - SIZE;
        nextY = nextY - SIZE;
      }
      
      //fill over this current box
      fill(204);
      square(nextX, nextY, SIZE);
    }
  }
}

void draw(){}
