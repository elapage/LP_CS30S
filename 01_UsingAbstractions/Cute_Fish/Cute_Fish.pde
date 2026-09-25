/**
  * This program draws a cute fish
  * LP (YOUR NAME HERE)
  * Sept 21 2026
  */

size(500, 500);

noStroke();

background(#1AF5FF);  //the sky

//the water surrounding the fish
fill(#0012CB);
rect(0, 150, 500, 350);

//draw the fish
fill(#FFB00F);
triangle(185, 300, 125, 280, 125, 320);  //tail
circle(250, 300, 150);  //body

//fish face
stroke(0); 
strokeWeight(5);
arc(290, 300, 30, 40, radians(0), radians(180));  //smile
//eyes
noStroke();
fill(0);
circle(275, 280, 10);  //left
circle(305, 280, 10);  //right
