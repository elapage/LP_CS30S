/**
 * create a gradient using variables, arithmetic expressions and
 * rectangles
 * @version October 1
 */

noStroke();
size(100, 400);
 
//first rectangle
fill(0);
rect(0, 0, width, height/5);

//second rectangle
fill(50);
rect(0, height/5, width, height/5);

//third rectangle
fill(100);
rect(0, 2 * height/5, width, height/5);

//fourth and fifth rectangle
fill(150);
rect(0, 3 * height/5, width, height/5);

fill(200);
rect(0, 4 * height/5, width, height/5);
