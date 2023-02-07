float[] _dist = new float[10];
float[] _angle= new float[10];
 float[] _speed = new float[10]; //starts counting from 0. 0 to 9. Not 1-10.

void setup()
{
  size(800,600);
  _speed[0]=5;
  _speed[1]=-6;
  _angle[0]=0.0;
  _angle[1]=0.0;
  _dist[0]=100.0;
  _dist[1]=130.0;
}

void draw()
{
  noStroke();
  fill(0,0,0,10); //fill above the shape
  rect(0,0,width,height);
  translate(width/2,height/2); //shifts the entire window,not just the circle. The center is now 0,0
  
  drawPlanet(_angle[0], _dist[0]);
  drawPlanet(_angle[1], _dist[1]);
  
  _angle[0] = _angle[0] + + + _speed[0];
  _angle[1] = _angle[1] + + + _speed[1]; 
  //rotating around the 0,0 point. The circle itself lies on the second translation point.
  //translate, rotate, and translate again
}

void drawPlanet(float angle, float distance) //must have a _cx and a _cy for this method of function making to work.
{
  pushMatrix();
  rotate(radians(angle));
  translate(0,distance);
  fill(255,215,0);
  circle(0,0,40); //drawing the circle
  popMatrix(); //restores coordinate system to original state
}
