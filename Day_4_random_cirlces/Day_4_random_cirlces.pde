float _cx = 0.0;
float _cy = 0.0;  //my own personal variable. Can use instead of typing the number.
float _cdx = random(1,10);
float _cdy = 10;

void setup()
{
  size(800,600);
}

void draw() //if tjehere is no _cx or _cy in the code, just put all functions directly in here.
{
  drawCircle(random(width),random(height));
  drawCircle(_cx,_cy);
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

void drawCircle(float x, float y) //must have a _cx and a _cy for this method of function making to work.
{
   noStroke();
  fill(0,0,0,10); //fill above the shape
  rect(0,0,width,height);
  fill(255,215,0);
  circle(x,y,40); //drawing the circle
}

/*
reuse the sam function to more easily create multiple copies of a similar cirlce
() imply that it is a function. This method requires the float x and float y variables
*/




 
/*
stay strong
*/
