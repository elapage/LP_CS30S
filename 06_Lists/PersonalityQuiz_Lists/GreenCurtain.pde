/**
 * Here are all the helper methods for this program. Feel free to study and use!
 */

/**
 * Gets and returns the value assigned to A (1), B (2), C (3), D (4)
 */
int optionValue(String value)
{
  int val;
  value = value.toUpperCase();
  if(value.equals("A"))
  {
    val = 1;
  }
  else if(value.equals("B"))
  {
    val = 2;
  }
  else if(value.equals("C"))
  {
    val = 3;
  }
  else
  {
    val = 4;
  }
  
  return val;
}

/**
 * Prints the result of the personality quiz based on the score
 */
void printAnswer(int score)
{
  //four possible options; ranges would go:
  //[0, maxQuestions]
  //(maxQuestions, maxQuestions * 2]
  //(maxQuestions * 2, maxQuestions * 3]
  //(maxQuestions * 3, maxQuestions * 4]
  
  if(score > maxQuestions * 3)
  {
    println(answers.get(3));
  }
  else if(score > maxQuestions * 2)
  {
    println(answers.get(2));
  }
  else if(score > maxQuestions)
  {
    println(answers.get(1));
  }
  else
  {
    println(answers.get(0));
  }
  
}

/**
 * So long as there are questions to be asked, ask the question and display
 * the options
 */
 
boolean askQuestion()
{
  boolean askedQuestion = false;
  if(currQuestion < questions.size())
  {
    println(questions.get(currQuestion));
    println(options.get(currQuestion));   
    askedQuestion = true;
  }
  
  return askedQuestion;
}

//initialize all the string lists and add the text
void initializeStrings()
{
  //initialize strings
  questions = new StringList();
  options = new StringList();
  answers = new StringList();
  
  //read the lines from the file - check out the green curtain if
  //you'd like to see how it is done!
  maxQuestions = getDataFromFile(questions, options);
  
  answers.append("You are loaded baked potatoes!");
  answers.append("You are curly fries!");
  answers.append("You are tater tots!");
  answers.append("You are mashed potatoes!");
  

}

/**
 * gets the data from the file
 * PRE-CONDITION - there will be an even number of lines (1 question, 1 answer)
 * PRE-CONDITION - Options are A, B, C, D
 */
 
int getDataFromFile(StringList questions, StringList answers)
{
  String [] lines = loadStrings("quiz.txt");
  int index = 0;
  int numQuestions = lines.length / 2;
  
  //the questions are on the first
  while(index < lines.length)
  {
    questions.append(lines[index]);
    index++;
    answers.append(lines[index]);
    index++;
  }
  
  return numQuestions;
  
}
