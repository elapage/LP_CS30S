/**
 * CASE STUDY - Secret Keyboard
 * Displays a square coloured that is mapped to a lowercase
 * letter
 * Practices program development and conditional statements
 */

final color FILL_A = #5CA4A9;  //the colour that will be used for A
final color FILL_Z = #B81365;  //the colour that will be used for Z
//all other colours will be calculated in between these two using lerpColor!

final int SIDE = 50;  //side length of the rectangle

int x, y;  //location of the next square

//variable to keep track of the current message
String message;

void setup()
{
  size(500, 500);
  
  noStroke();
  
  //starts at the top, left hand corner
  x = 0;
  y = 0;
  
  //message starts blank
  message = "";  //assigned an "empty string"
}

void draw()
{
}

void keyPressed()
{
  //draw a box if a lowercase letter is pressed
  if(key >= 'a' && key <= 'z')
  {
    float ratio;  //mapped value of the position of key in between 'a' and 'z'
    color letterColour;  //calculated colour between two other colours
    
    //mapped key which was in the range 'a' to 'z' to the new range 0 to 1
    ratio = map((int)key, 'a', 'z', 0, 1);
    
    //calculate the colour based on the key's position in the letter range
    letterColour = lerpColor(FILL_A, FILL_Z, ratio);
    
    fill(letterColour);
    square(x, y, SIDE);
    
    //add letter to message
    message += key;
    
    //the next position is just to the right of the current square
    x += SIDE;
    
    //check to see if we are at the right hand border; if so, go to next line
    if(x >= width)
    {
      //reset x back to the left edge
      x = 0;
      //next line
      y += SIDE;
    }//end of border check
  }//end of letter check
  else if(key == ' ')  //check if a space is typed
  {
    //add a space to the message
    message += key;
    
    //skipping a square means adding the size of a square to the x without
    //drawing one
    x += SIDE;
    
    //check to see if we are at the right hand border; if so, go to next line
    if(x >= width)
    {
      //reset x back to the left edge
      x = 0;
      //next line
      y += SIDE;
    }//end of border check    
  }//end of space check
  else if(keyCode == BACKSPACE)  //check for a delete (don't worry about the String!)
  {
    //cannot delete if x and y are both 0 (no more letters)
    if(x != 0 || y != 0)
    {
      //go one to the left
      x -= SIDE;
      //have to go to the line above
      if(x < 0)
      {
        x = width-SIDE;
        y -= SIDE;
      }
    }
    
    //fill with the background
    fill(204);
    square(x, y, SIDE);
  }
  else  //any other key will show the message
  {
    println(message);
    
    //clear the screen
    background(204);
    x= 0;
    y = 0;
    message = "";
  }
  
}//end of keyPressed
