planet sun;
//int nPlanets = 20;
//ArrayList<planet> planets = new ArrayList<planet>();
//int nGen = 3;



void setup()
{
  size(1200,800);
  sun = new planet(3);
  sun.size = 80;
  sun.col = color(255,200,0);
 sun.dist = 0;
 sun.speed = 0;
  
}

void draw()
{
  noStroke();
  fill(0,0,0,5); //fill above the shape
  rect(0,0,width,height);
  translate(width/2,height/2);
  scale(0.6);
  sun.draw();
 sun.update();
}
