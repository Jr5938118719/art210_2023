planet mercury = new planet();
planet venus = new planet();
planet earth = new planet();
planet mars = new planet();
planet jupiter = new planet();
planet saturn = new planet();
planet uranus = new planet();
planet neptune = new planet();
//int nPlanets = 10;
//ArrayList<planet> planets = new ArrayList<planet>();

void setup()
{
  size(2400,1600);
 
  mercury.dist = 57.9;
  mercury.size = 4.9;
  mercury.col = color(150);
  mercury.speed = 4.74;
  venus.dist = 108.2;
  venus.size = 12.1;
  venus.col = color(200,50,0);
  venus.speed = 3.5;
  earth.dist = 149.6;
  earth.size = 12.8;
  earth.col = color(0,0,200);
  earth.speed = 2.98;
  mars.dist = 228;
  mars.size = 6.8;
  mars.col = color(255,150,0);
  mars.speed = 2.52;
  jupiter.dist = 778.5;
  jupiter.size = 14.2;
  jupiter.col = color(255,200,200);
  jupiter.speed = 1.31;
  
  //for(int i = 0; i < nPlanets; i = i +1 )
  //{
    //planets.add(new planet());
  //}
}

void draw()
{
  noStroke();
  fill(0,0,0,5); //fill above the shape
  rect(0,0,width,height);
  translate(width/2,height/2);
  fill(255,225,0);
  circle(0,0,50);
 
  
  mercury.draw();
 mercury.update();
  
  venus.draw();
  venus.update();
  
  earth.draw();
  earth.update();
  
  mars.draw();
  mars.update();
  
  jupiter.draw();
 jupiter.update();
  
  saturn.draw();
  saturn.update();
  
  uranus.draw();
  uranus.update();
  
  neptune.draw();
  neptune.update();
  
  //for(int i = 0; i < nPlanets; i = i +1 )
  //{
    //planet buf = planets.get(i);
    //buf.draw();
    //buf.update();
  }
  
