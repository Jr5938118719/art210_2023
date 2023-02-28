
PVector location = new PVector(100,100);
PVector velocity = new PVector(1,3.3);
PVector acceleration =new PVector(0.013,0.03);
 
//Remember how Processing works? setup() is executed once when the sketch starts and draw() loops forever and ever (until you quit).
void setup() {
  size(640,360);
  background(255);
}
 
void draw() {
  background(255);
 
//Move the ball according to its speed.
 velocity.add(acceleration);
 location.add(velocity);
 
//Check for bouncing.
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x* -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }
 
  stroke(0);
  fill(175);
//Display the ball at the location (x,y).
  ellipse(location.x,location.y,16,16);
}
