 int _nPlanets = 100;
float[] _dist = new float[_nPlanets];
float[] _angle= new float[_nPlanets];
 float[] _speed = new float[_nPlanets]; //starts counting from 0. 0 to 9. Not 1-10.
 float[] _size =new float[_nPlanets];
color [] _color =new color[_nPlanets];
boolean[] _isMoon = new boolean[_nPlanets];

void setup()
{
  //size(1200,800);
  fullScreen(P3D);
  for(int i = 0; i < _nPlanets; i = i + 1)
  {
    _speed[i]=random(-0.18,0.18);
    _angle[i]=0.0;
    _dist[i]=random(100,400);
    _size[i]=random(30,70);
    _color[i]=color(random(255),random(255),random(255));
    _isMoon[i]=random(-1,1) > 0;
    
  }
  /*
  _speed[0]=5;
  _speed[1]=-6;
  _angle[0]=0.0;
  _angle[1]=0.0;
  _dist[0]=100.0;
  _dist[1]=150.0;
  */
}

void draw()
{
  noStroke();
  fill(0,0,0,5); //fill above the shape
  rect(0,0,width,height);
  translate(width/2,height/2); //shifts the entire window,not just the circle. The center is now 0,0
  scale(0.5);
  for(int i = 0; i < _nPlanets; i = i + 1)
  {
    drawPlanet(_angle[i], _dist[i], _size[i], _color[i], _isMoon[i]);
     _angle[i] = _angle[i] + + _speed[i];
    
    
  }
  /*
  drawPlanet(_angle[0], _dist[0]);
  drawPlanet(_angle[1], _dist[1]);
  
  _angle[0] = _angle[0] + + _speed[0];
  _angle[1] = _angle[1] + + _speed[1]; 
  */
  //rotating around the 0,0 point. The circle itself lies on the second translation point.
  //translate, rotate, and translate again
}

void drawPlanet(float angle, float distance, float size, color c, boolean isMoon) //must have a _cx and a _cy for this method of function making to work.
{
  if(!isMoon) pushMatrix();
  rotate(radians(angle));
  translate(0,distance);
  fill(c);
  circle (0,0,size); //drawing the circle
  if(!isMoon)popMatrix(); //restores coordinate system to original state
}
