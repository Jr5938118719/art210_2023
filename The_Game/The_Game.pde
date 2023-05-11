import processing.sound.*;
import de.looksgood.ani.*;

Animation w;


int nhomework = 1;
homework[] h = new homework[nhomework];
int nhomework2 =1;
homework2[] o = new homework2[nhomework2];


josh s;
boolean test = true;
Sound m;

boolean i = true;

static final int SPLASH = 0;
static final int PLAY = 1;
static final int LOSE = 2;
int gameState = SPLASH;

PVector velocity = new PVector (10,10);
PVector location = new PVector (0,0);
PVector acceleration = new PVector (0,0);

void setup()  //this.currentAnim = #. try this out for changing animations.
{
  size(1200,600);
frameRate(30);
  //fullScreen();
  
  
  m = new Sound(this,"Battle.wav");
 Ani.init(this);
  gameStateChange(SPLASH);
  
  test = false;
}

void draw()
{
 if(gameState == SPLASH) splash_run();
 if(gameState == PLAY) game_run();
 if(gameState == LOSE) lose_run();
 
 
}

void keyPressed()
{
if(gameState == SPLASH) splash_keyPressed();
 if(gameState == PLAY) game_keyPressed();
 if(gameState == LOSE) lose_keyPressed();

}

void mouseClicked()
{
 if(gameState == SPLASH) splash_mouseClicked();
 if(gameState == PLAY) game_mouseClicked();
 if(gameState == LOSE) lose_mouseClicked();
}

void gameStateChange(int state)
{
  gameState = state;
  if(gameState == SPLASH) splash_init();
  if(gameState == PLAY) game_init();
  if(gameState == LOSE) lose_init();
}

void lose_init()
{
  s = new josh("test");
  
}

void lose_run()
{
  background(50,5,5);
  
  fill(30);
  rect(0,125,width,height);
  
  
  s.display();
  s.update();
  s.check();
  
  fill(100,10,10);
 textSize(75);
  text("Overwhelmed...", 350, height/3);
  textSize(40);
  text("Press S to Try Again", 425, height/2);
}

void lose_keyPressed()
{
  if(keyPressed)
  {
    if (key == 's' || key == 'S')
    {
  gameStateChange(PLAY);
}
  }
  
}
  



  
void lose_mouseClicked()
{
  
}





//splash stuff begin
void splash_init()
{
  s = new josh("test");
}

void splash_run()
{
  background(255,200,200);
  
   fill(220);
  rect(0,125,width,height);
  
  s.display();
  s.update();
  s.check();
  textSize(70);
  
  fill(80,120,220);
  text("Homework Beat 'Em Up", 250, height/4);
  
  textSize(40);
  text("Press S to Begin", 450, height/2);
  textSize(20);
  text("Press A to punch left and D to punch right",410, 350);
}

void splash_keyPressed()
{
  if(keyPressed)
  {
    if (key == 's' || key == 'S')
    {
  gameStateChange(PLAY);
    }
}
}
  
void splash_mouseClicked()
{
  
}


//splash stuff end

//game stuff begin

void game_init()
{
  s = new josh("test");
 
  for(int i = 0; i < nhomework; i = i+1)
 {
  h[i] = new homework("homeworkIdle"+i);
 }
 
 for(int i = 0; i < nhomework2; i = i+1)
 {
  o[i] = new homework2("homeworkIdle"+i);
 }
 // test = false;
}

void game_run()
{
   background(175,100,100);
   

   
   
   
  fill(150);
  rect(0,125,width,height);
  
  s.display();
  s.update();
  s.check();
  
  
  for(int i = 0; i < nhomework; i = i+1)
 {
  h[i].display();
  h[i].update();
  h[i].check();
 }
 //m.display();
 //m.update();
 for(int i = 0; i < nhomework2; i = i+1)
 {
  o[i].display();
  o[i].update();
  o[i].check();
 }
 
}


void game_keyPressed()
{
 if (key == CODED)
  {
    if (keyCode == UP)
    {
    s.velocity.x = 0;
     s.velocity.y = -7;
     
     s.currentAnim = 4;
    
      
    }
  else if (keyCode == DOWN)
    {
     s.velocity.x = 0;
    s.velocity.y = 7;
    s.currentAnim = 5;   
    
          
      
    }
  else if (keyCode == LEFT)
    {
    s.velocity.x = -7;
     s.velocity.y = 0;
     s.currentAnim =5;
     
    
    
    }
  else if (keyCode == RIGHT)
    {
      s.velocity.x = 7;
      s.velocity.y = 0;
      s.currentAnim =4;
    
     
    }
    
    
  
  
}
if(keyPressed)
  {
    if (key == 'a' || key == 'A')
    {
     
      s.currentAnim=2;
      s.anim[s.currentAnim].counter=0;
      s.anim[s.currentAnim].currentFrame=0;
    s.anim[s.currentAnim].pause=false;
    
    }
  
  }
  
  if(keyPressed)
  {
    if (key == 'd' || key == 'D')
    {
     
      s.currentAnim=3;
      s.anim[s.currentAnim].counter=0;
      s.anim[s.currentAnim].currentFrame=0;
    s.anim[s.currentAnim].pause=false;
    
    }
  
  }
}




 void keyReleased()
{
 if (key == CODED)
  {
    if (keyCode == UP)
    {
    s.velocity.x = 0;
     s.velocity.y = 0;
     s.currentAnim=1;
     
      
      
    }
  else if (keyCode == DOWN)
    {
     s.velocity.x = 0;
    s.velocity.y = 0;
    s.currentAnim = 0;    
         
     
    }
  else if (keyCode == LEFT)
    {
    s.velocity.x = 0;
     s.velocity.y = 0;
     s.currentAnim = 0;
     
   
    
    }
  else if (keyCode == RIGHT)
    {
      s.velocity.x = 0;
      s.velocity.y = 0;
      s.currentAnim = 1;
    
     
    }
  
}


}


void game_mouseClicked()
{
  if(m.soundLevel == 0)
  {
    m.fadeIn();
  }
  
  else
  {
    m.fadeOut();
  
  }
}
