class planet
{
  float speed = 1.0;
   float angle = 0.0;
   float dist = 100.0;
 float size = 10.0;
   color col = color(255,255,255);
   //planet moon;
   //boolean hasMoon = false;
   
   //planet(boolean createMoon)
   {
    // this.speed = random(-2,2);
     //this.dist = random(20,300);
     //if(createMoon)
     {
       //this.moon = new planet(false);
     //this.hasMoon = true;
     }
   }

void update()
{
  this.angle = this.angle + this.speed;
}

void draw()
{
  pushMatrix();
 rotate(radians(this.angle));
  translate(0,this.dist);
   scale(0.1);
  fill(this.col);
  circle (0,0,this.
  size); //drawing the circle
  //if(this.hasMoon) this.moon.draw();
  popMatrix(); //restores coordinate system to original state
  //if(this.hasMoon) this.moon.update();
   }
}
