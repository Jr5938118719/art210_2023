class planet //describes the aspects of a planet. Base attributes.

{
  float speed = 1.0; //Determine properties with float.
   float angle = 0.0;
   float dist = 100.0;
   float size = 10.0;
   color col = color(255,255,255);
   int nMoons = 0;
   ArrayList<planet> moons = new ArrayList<planet>();

planet(int moons)
{
  this.speed =random(-1,1);
  this.dist = random(20,300);
  this.nMoons = moons;
  this.col= color(random(0,255), random(0,255), random(0,255));
   for(int i=0; i<this.nMoons; i = i +1 ) //everythinh within the curly brakcets will be repeated. The for implies the creation of a loop.
  {
    planet aMoon = new planet(0);
    aMoon.col = this.col;
    this.moons.add(aMoon);
  }
}

void update() //Planet can update its own rotation.
{
  this.angle = this.angle + this.speed;
   
}

void draw()
{
  pushMatrix();
  rotate(radians(this.angle));
  translate(0,this.dist);
  fill(this.col);
  circle (0,0,this.
  size); //drawing the circle
   for(int i=0; i<this.nMoons; i = i +1)
  {
    
    planet aMoon = this.moons.get(i);
    aMoon.update();
    aMoon.draw();
  }
  popMatrix(); //restores coordinate system to original state
   }
}
