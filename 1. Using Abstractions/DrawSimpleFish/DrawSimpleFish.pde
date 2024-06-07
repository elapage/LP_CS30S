/**
 * This program draws a fish! An example of using
 * shape methods in Processing and using logical thinking
 * to create a composite shape
 */

size(400, 400);
background(#72DDFA);
noStroke();

//body of water
fill(#1B51F0);
rect(0, 100, 400, 300);

//draw the body of the fish
fill(#FAB403);
triangle(150, 200, 130, 180, 130, 220);  //fin
ellipse(200, 200, 100, 100);  //body

//draw the eyes
fill(0);
ellipse(215, 190, 10, 10);  //left eye
ellipse(235, 190, 10, 10);  //right eye

//mouth
noFill();
stroke(0);
arc(225, 200, 15, 15, radians(0), radians(180));
