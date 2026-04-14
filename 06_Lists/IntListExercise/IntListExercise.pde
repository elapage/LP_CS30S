/**
 * IntList Exercise - get practice manipulating
 * a list!
 * @version April 14 2026
 */
 
IntList numbers;
final int MAX_NUMBERS = 40;

void setup()
{
  numbers = new IntList();
  initializeList(MAX_NUMBERS);
  printList();
}

void draw() {}

void keyPressed()
{
  //check to see if we pressed a number key
  if(key >= '0' && key <= '9')
  {
    int digit = (int)(key - '0');
    int index = 0;
    
    //"go through" the list, check whether the element
    //is the digit to remove and remove if it is
    //USE A WHILE-LOOP because the size will change
    //and using a for-loop causes us to skip elements
    while(index < numbers.size())
    {
      if(numbers.get(index) == digit)
      {
        numbers.remove(index);
        //don't move on! The current index is a new
        //number and we have to check it!
      }
      else
      {
        //only go to the next number if it wasn't
        //a match with the digit
        index++;
      }
      
    }
    
    printList();
    
  }
}

//prints the list with 10 digits per line
void printList()
{
  for(int index = 0; index < numbers.size(); index++)
  {
    print(numbers.get(index) + " ");
    
    //check if this is the tenth, 20th, etc. item. print
    //a space after
    if((index+1) % 10 == 0)
    {
      println("");
    }
  }
  println("");
}

//set numbers to the starting list of 
//random numbers
void initializeList(int listSize)
{
  //repeatedly add numbers to the list
  for(int index = 0; index < listSize; index++)
  {
    int randomNumber = (int)random(0, 10);
    numbers.append(randomNumber);
  }
}
