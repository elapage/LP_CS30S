 /* Creates an interactive square flower. Starter code to practice making a function!
 * @author YOUR NAME
 */
 
 void setup()
 {
   size(400, 400);
   rectMode(CENTER);   //draw rectangles based on the centre
   stroke(30, 40);
   //noStroke();
 }
 
 void draw()
 {
   background(255);
   
   //need to set the rotation to the centre of the surface
   translate(width/2, height/2);
   
   for(int size = 255; size > 0; size -= 10)
   {
     fill(255, 255-size, 255-size);  //ombre effect
     
     //create the calculateRotateValue function!
     rotate(calculateRotateValue(mouseX, mouseY)); 
     
     rect(0, 0, size, size);  //draw the rectangle!
   }
 }
 
 
//the rotate value can be calculated as:
//float rotateValue = (x + y) * 1.0/width
//This value should be RETURNED from a function to calculate the rotate value!
