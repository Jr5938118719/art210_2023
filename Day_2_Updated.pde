float _cx = 0.0;  //my own personal variable. Can use instead of typing the number.
float _cd = 10;

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
  circle(_cx,height/2,40); //drawing the circle
  _cx = _cx + _cd;
  
  if(_cx > width || _cx < 0)
  {
    _cd = _cd * (-1);
  }
 
}

/*
hi future josh
*/
