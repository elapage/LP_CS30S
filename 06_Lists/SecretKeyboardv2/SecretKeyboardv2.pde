/**
 * This is a program that will display keys pressed as coloured boxes. The colours
 * are calculated based on where in the alphabet that letter is. Display
 * the secret message.
 * EDIT - changed to use lists and objects
 * @version April 16 2026
 */

String secretMessage;
ArrayList<Tile> tiles;  //all the tiles that have been created
 
void setup()
{
  size(500, 500);
  
  secretMessage = "";  //set to an empty String - no message
  tiles = new ArrayList<Tile>();
  
  noStroke();
}

void keyPressed()
{ 
  //check if it is a letter or a space
  //PRE-CONDITION: only concerned with lowercase letters
  if(key == ' ' || (key >= 'a' && key <= 'z'))
  {
    Tile newTile;
    
    //two situations - no tiles added yet (adding at (0, 0)
    //or calculating the next position
    if(tiles.size() == 0)  //check if list is empty
    {
      newTile = new Tile(0, 0, key);
    }
    else
    {
      int nextX, nextY;
      Tile previousTile = tiles.get(tiles.size() - 1);  //last tile added
      
      //calculate our next x by adding the size of the tile to its x
      nextX = previousTile.getX() + previousTile.getSize();
      nextY = previousTile.getY();
      
      //check if at right edge
      if(nextX >= width)
      {
        nextX = 0;
        nextY += previousTile.getSize();
      }
      
      //now that I have (nextX, nextY), create the new tile
      newTile = new Tile(nextX, nextY, key);
    }
    
    tiles.add(newTile);

  }
  else if(key == ENTER)
  {
    //give message in console and clear list
  }
  else if(key == BACKSPACE)
  {
    //whenever you attempt to remove from the list, make sure
    //that you can remove!
    if(tiles.size() > 0)
    {
      tiles.remove(tiles.size() - 1);
    }
    
  }
}

void draw()
{
  background(204);
  
  //"go through" the list to display each item
  for(int index = 0; index < tiles.size(); index++)
  {
    Tile currentTile = tiles.get(index);  //get and store current item
    currentTile.display();  //use the item!
  }
}
