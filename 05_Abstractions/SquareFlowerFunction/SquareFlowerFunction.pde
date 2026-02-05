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
   
   //could just create a variable and calculate
   //before the for-loop because it should be the
   //same for each square
   float rotateValue = calculateRotateValue();
   
   for(int size = 255; size > 0; size -= 10)
   {
     fill(255, 255-size, 255-size);  //ombre effect
     
     //create the calculateRotateValue function!
     rotate(rotateValue); 
     //rotate(calculateRotateValue());  //also correct!
     
     rect(0, 0, size, size);  //draw the rectangle!
   }
 }
 
 
//the rotate value can be calculated as:
//float rotateValue = (mouseX + mouseY) * 1.0/width
//This value should be RETURNED from a function to calculate the rotate value!

float calculateRotateValue()
{
  //nice to create a variable and return it (for readability)
  //float rotateValue = (mouseX + mouseY) * 1.0/width;
  
  //return rotateValue;
  
  //also correct to just return the result of the expression
  return (mouseX + mouseY) * 1.0/width;
}
