/**
 * This example explores arithmetic expressions and
 * Processing variables
 * @author YOUR NAME HERE
 * @version October 7 2025
 */

int  currentFill;  //declaration statement
currentFill = 0;  //initializing the variable
//int currentFill = 0;  //another valid way to assign and declare
 
size(100, 500);
noStroke();

//first rectangle - starts at the top - black
fill(currentFill);
rect(0, 0, width, height / 5);

//any time we want to change a variable, we need to use the assignment
//operator (=) and the variable to the left of that operator
currentFill = currentFill + 50;
fill(currentFill);
rect(0, height / 5, width, height / 5);

//each following rectangle starts right after the
//last and is a lighter colour
currentFill = currentFill + 50;
fill(currentFill);
rect(0, height / 5 * 2, width, height / 5);

currentFill = currentFill + 50;
fill(currentFill);
rect(0, height / 5 * 3, width, height / 5);

currentFill = currentFill + 50;
fill(currentFill);
rect(0, height / 5 * 4, width, height / 5);
