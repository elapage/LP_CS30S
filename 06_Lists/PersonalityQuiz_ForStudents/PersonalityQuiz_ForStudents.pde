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
 * boolean askQuestion() - asks the current question
 * void initializeStrings() - initializes the quiz StringLists (questions, options, and results) for the key option list
 */

void setup()
{
  //intialize all the string lists
  initializeStrings();
  
  //complete in class!
  
}

void keyPressed()
{
  //complete in class!
}


/**
 * Calculates the total of all the options inputted
 */
 
int calculateScore()
{
  //complete in class!
  
  return 0;
}

//initializes the possible key options (A, B, C, D)
void initializeKeyOptions()
{
  //complete in class!
}


void draw() {}
