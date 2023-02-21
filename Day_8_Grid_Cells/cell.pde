class Cell
{
  float d = 10; //width & height
  int px = 0;
  int py = 0;
  boolean isLive = false;
  
  Cell(int _px, int _py, float _d) //constructor
  {
    this.px = _px;
    this.py = _py;
    this.d = _d;
  }
  
  void display()
  {
    if(isLive)
    {
      fill(255);
    }
    
    else
    {
      fill(30);
    }
    rect(this.px * this.d,this.py * this.d,this.d,this.d);
  }
}
