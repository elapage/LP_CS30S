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
    //delete from the front of the list
    removeFromList(0);
  }
  else if(key == 'l' || key == 'L')
  {
    //delete from the end of the list (variable
    //so we need an expression, not a literal)
    removeFromList(rolls.size() - 1);
  }
  else if(key == 'd' || key == 'D')
  {
    //remove a random element from the list
    
    //get a random index
    int randomIndex = (int)(random(0, rolls.size()));
    println("Removing " + randomIndex);
    removeFromList(randomIndex);
  }
  
  //println(rolls);
  //use a for-loop because the indices of the list have
  //a very nicely structured pattern
  //                 index < rolls.size()
  for(int index = 0; index <= rolls.size() - 1; index++)
  {
    print(rolls.get(index) + " ");
  }
  println("");
}

//general remove method for any of the operations
//in the keyPressed method
void removeFromList(int index)
{
  //always check to make sure we can remove (so
  //long as there is at least one element)
  if(rolls.size() > 0)
  {
    rolls.remove(index);  //removes first element
  }  
}
