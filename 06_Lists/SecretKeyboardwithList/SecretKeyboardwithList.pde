/**
 * A program that types out a secret message
 * in coloured boxes. Each letter maps to a certain
 * colour
 */
 
// declare and initialize the ArrayList
ArrayList<KeyBlock> blocks = new ArrayList<KeyBlock>();

 
void setup()
{
  size(500, 500);
  
  noStroke();
}

void draw()
{
  background(204);
  
  /** display the keyblocks */
  for(int i = 0; i < blocks.size(); i++)
  {
    KeyBlock currentBlock = blocks.get(i);
    currentBlock.display();
  }
  
}

void keyPressed()
{
  //check if the key pressed was a letter, a
  //space or anything else
  if((key >= 'a' && key <= 'z') || key == ' ')  //checks if a LC letter or a space
  {
    KeyBlock newBlock = createNewBlock(key);  //creates the new block based on the key
    
    blocks.add(newBlock);
  }//end letter check
  else if(keyCode == BACKSPACE)
  {
    /* a backspace would mean deleting that character */
    if(blocks.size() > 0)
    {
      blocks.remove(blocks.size() - 1);
    }
  }
  else
  {
    /* if any other character was pressed, print out
     * all the characters to the console and clear the list
     */
    
    //use a for-loop to go through the list
    for(int i = 0; i < blocks.size(); i++)
    {
      KeyBlock currentBlock = blocks.get(i);
      print(currentBlock.getCharacter());
    }
    println("");  //makes sure next message is on the next line
    
    blocks.clear();
  }
}//end keyPressed


/* create a new block. There are two scenarios: 
 * 1. if there are no blocks, add at (0, 0)
 * 2. if there are blocks, get the next x and y from the previous block
 * if the key was a space, the colour of the block should match the background
 * of the program, otherwise you just need to add the key
 * Make sure you add the block to the list!
 */
KeyBlock createNewBlock(char letter)
{
   KeyBlock newBlock = null;
   int nextX, nextY;  //new block's x and y
   
   if(blocks.size() == 0)  //this is the first block!
   {
     //first block is always at (0, 0)
     nextX = 0;
     nextY = 0; 
   }
   else  //any other position on the board
   {
     //place the block next to the previous block
     KeyBlock previousBlock = blocks.get(blocks.size() - 1);  //the last block added
     
     nextX = previousBlock.getNextX();
     
     //check if x is beyond right border; get appropriate y based on that
     if(nextX >= width)
     {
       nextY = previousBlock.getNextY();
       nextX = 0;
     }
     else
     {
       nextY = previousBlock.getY();
     }
   }
   
   //create the KeyBlock with the background colour or the letter
   //based on whether user entered a space or a letter
   if(letter == ' ')
   {
     newBlock = new KeyBlock(nextX, nextY, 204);
   }
   else
   {
     newBlock = new KeyBlock(nextX, nextY, letter);
   }     
   
   return newBlock;
}
