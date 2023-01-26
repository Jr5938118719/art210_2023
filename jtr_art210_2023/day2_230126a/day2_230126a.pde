float _cx = 0.0;  //my own personal variable. Can use instead of typing the number.

void setup()
{
  size(800,600);
}

void draw()
{
  noStroke();
  fill(0); //fill above the shape
  rect(0,0,width,height);
  fill(255,215,0);
  circle(_cx,height/2,100); //drawing the circle
  
  if(_cx > width)
  {
    _cx = 0.0;
  }
  else
    {
     _cx = _cx + 1;
    }
}

/*
hi future josh
*/
