float _cx = 0.0;
float _cy = 0.0;  //my own personal variable. Can use instead of typing the number.
float _cdx = random(1,10);
float _cdy = 10;

void setup()
{
  size(800,600);
}

void draw()
{
  noStroke();
  fill(0,0,0,10); //fill above the shape
  rect(0,0,width,height);
  fill(255,215,0);
  circle(_cx,_cy,40); //drawing the circle
  _cx = update(_cx,_cdx);
  _cy = update(_cy,_cdy);
  _cdx = check(_cx,_cdx,0,width);
  _cdy = check(_cy, _cdy,0,height);
 
}

float update(float value, float increment)
{
  
  return(value + increment);
  
}

float check(float value, float delta, float lower_limit, float upper_limit)
{
  if(value > upper_limit || value < lower_limit)
  {
  
    return(delta * (-1));
  }
  return(delta);
}

 
/*
resist
*/
