void setup()
{
  size(1000,800);
  //myfont = createFont("elite.ttf",100);
}

void draw()
{
  fill(0);
  textSize(50);
  textLeading(75);
  fill(0,frameCount);
  text("This is what you get for procrastinating", 100,100);
  rect(100,100,width-200,height-200);
  
  //textFont(myfont);
  /*textSize(50);
  textLeading(75);
  fill(0,frameCount);
  text("This is what you get for procrastinating", 100,100);
  rect(100,100,width-200,height-200);*/
  
}
