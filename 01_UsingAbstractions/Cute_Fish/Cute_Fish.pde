/**
  * This program draws a cute fish
  * LP (YOUR NAME HERE)
  * Sept 21 2026
  */

size(500, 500);

//the water surrounding the fish
rect(0, 150, 500, 350);

//draw the fish
triangle(185, 300, 125, 280, 125, 320);  //tail
circle(250, 300, 150);  //body

//fish face
arc(290, 300, 30, 40, radians(0), radians(180));  //smile
//eyes
circle(275, 280, 10);  //left
circle(305, 280, 10);  //right
