/**
 * A car on a road! An exercise to
 * practice finding and fixing errors!
 * @author YOUR NAME HERE!
 */

//set up the document
size(800, 400);
background(#13A3D6);

//background setting
//(road and grass and sun)
noStroke();
fill(#11BC5F);
rect(0, 300, 1000, 100);
fill(100);
rect(0, 300, 1000, 33.3);  //ERROR syntax - incorrect spelling

//car body
fill(#CB1948);  //ERROR - missing #
rect(400, 200, 250, 75, 100, 25, 0, 0);
//top of the car
arc(525, 225, 150, 125, radians(180), radians(360));
//windshield
fill(255);
arc(535, 200, 80, 62.5, radians(270), radians(360));

//tires
fill(0);
ellipse(450, 275, 50, 50); //back tire
fill(200);  //ERROR - missing semi-colon
ellipse(450, 275, 25, 25); //back hub cap  //ERROR - wrong value for x-coordinate - logic

fill(0);
ellipse(600, 275, 50, 50);  //front tire  //ERROR - missing )
fill(200);
ellipse(600, 275, 25, 25);  //front hub cap
