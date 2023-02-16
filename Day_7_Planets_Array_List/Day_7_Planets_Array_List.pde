//planet first = new planet(); //must have the name of the class first
int nPlanets = 6;
ArrayList<planet> planets = new ArrayList<planet>();

void setup()
{
  size(1200,800);
  for(int i=0; i<nPlanets; i = i +1) //everythinh within the curly brakcets will be repeated. The for implies the creation of a loop.
  {
    //planets.add(new planet());
    planet aPlanet = new planet(floor((random(4))));
    aPlanet.size = 30;
    //aPlanet.nMoons = 1;
    planets.add(aPlanet);
  }
  
}

void draw()
{
  noStroke();
  fill(0,0,0,5); //fill above the shape
  rect(0,0,width,height);
  translate(width/2,height/2);
  
  for(int i=0; i<nPlanets; i = i +1)
  {
    planet aPlanet = planets.get(i);
    aPlanet.update();
    aPlanet.draw();
  }
  //first.draw();
 //first.update();
}
