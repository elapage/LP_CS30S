/**
 * Example - "simple" personality quiz using StringLists and IntLists
 */

//A variety of questions and their corresponding options
StringList questions;
StringList options;

//your personality type
StringList answers;

//the possible keys that can be chosen
StringList keyOptions;

//the choices the user makes
IntList choices;

//the current question we are asking
int currQuestion;

//the maximum number of questions there are available
int maxQuestions;

/**
 * List of helper methods:
 * int optionValue(String k) - gets the value of the option they pressed (A - 1, B - 2, C - 3, D - 4)
 * void printAnswer(int score) - prints the quiz result based on the given score
 * boolean askQuestion() - asks the current question, returns true if question asked; false otherwise
 * void initializeStrings() - initializes the quiz StringLists (questions, options, and results) for the key option list
 */

void setup()
{
  //intialize all the string lists
  initializeStrings();
  
  //initialize key options
  initializeKeyOptions();
  
  //start questions at first question in the list
  currQuestion = 0;
  
  //initialize the choices list
  choices = new IntList();
  
  //start the game!
  println("What type of potato are you? Take the quiz!");
  askQuestion();
  
}

void keyPressed()
{
  String input = String.valueOf(key);  //converts key to a String equivalent
  
  //check if they entered a valid key (ie - the input is in the keyOptions
  //list)
  if(keyOptions.hasValue(input))
  {
    //keep track of the option they chose
    choices.append(optionValue(input));
    
    //next question!
    currQuestion++;
    
    //could we ask the question?
    boolean moreQuestions = askQuestion();
    if(moreQuestions == false)
    {
      int score = calculateScore();
      printAnswer(score);
    }
  }
  else
  {
    println("Try again, that isn't a valid option");
  }
}


/**
 * Calculates the total of all the options inputted
 */
 
int calculateScore()
{
  //sum the values in the choices list and return that sum
  int sum = 0;
  
  //go through the list
  for(int index = 0; index < choices.size(); index++)
  {
    sum += choices.get(index);
  }
  
  //sum = choices.sum();
  
  return sum;
}

//initializes the possible key options (A, B, C, D)
void initializeKeyOptions()
{
  keyOptions = new StringList();
  
  //PRE-CONDITION - only the options A, B, C or D
  
  //keyOptions.append("A");
  //keyOptions.append("B");
  //keyOptions.append("C");
  //keyOptions.append("D");
  
  for(int letter = 'A'; letter <= 'D'; letter++)
  {
    //String.valueOf(val) - gives the string equivalent of
    //that value
    keyOptions.append(String.valueOf((char)letter));
  }
  
  for(int letter = 'a'; letter <= 'd'; letter++)
  {
    //String.valueOf(val) - gives the string equivalent of
    //that value
    keyOptions.append(String.valueOf((char)letter));
  }  
}


void draw() {}
