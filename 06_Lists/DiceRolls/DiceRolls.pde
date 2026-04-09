/**
 * Exploring lists in Processing
 * every time a key is pressed, simulate a roll
 * of a die (D6). Will do other things to manipulate
 * the list
 * April 9 2026
 */

IntList rolls;  //collection of all "rolls" when
                //the user presses a key
 
void setup()
{
  rolls = new IntList();
  println(rolls);
}

void draw()
{
}

void keyPressed()
{
  //if the space key is pressed, simulate a roll
  if(key == ' ')
  {
    //to simulate a roll of a die, generate a random
    //number
    int currentRoll = (int)(random(1, 7));
    
    //add this value to the list
    rolls.append(currentRoll);  //adds to the end of the list
  }
  else if(key == 'f' || key == 'F')  //delete a roll if the 'd' key is pressed
  {
    removeFromList(0);
  }
  else if(key == 'l' || key == 'L')
  {
    removeFromList(rolls.size() - 1);
  }
  else if(key == 'd' || key == 'D')
  {
    //remove a random element from the list
  }
  
  println(rolls);
}

void removeFromList(int index)
{
  if(rolls.size() > 0)
  {
    rolls.remove(index);  //removes first element
  }  
}
