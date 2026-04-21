/**
 * Guessing game exercise
 */

StringList answer;
StringList guess;

void setup()
{
  initializeLists();
  printList(guess);
}

void printList(StringList list)
{
  for(int i = 0; i < list.size(); i++)
  {
    print(list.get(i) + " ");
  }
  println("");
}

void initializeLists()
{
  answer = new StringList();
  guess  = new StringList();
  
  answer.append("c");
  answer.append("a");
  answer.append("t");
  
  //guess list is the same size but filled with "*"
  for(int i = 0; i < answer.size(); i++)
  {
    guess.append("*");
  }
}

void draw() {}

void keyPressed()
{
  //PRE-CONDITION: we only worry about lowercase letters
  if(key >= 'a' && key <= 'z')
  {
    String userGuess = "" + key;  //turns key to a String
    println(userGuess);
    for(int i = 0; i < guess.size(); i++)
    {
      String currentCharacter = answer.get(i);
      
      //check if the current element is the key the user pressed
      if(userGuess.equals(currentCharacter))
      {
        guess.set(i, userGuess);
      }
    }
    printList(guess);
  }
}
