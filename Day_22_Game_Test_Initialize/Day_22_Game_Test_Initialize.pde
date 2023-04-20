import processing.sound.*;
import de.looksgood.ani.*;

int nhomework = 1;
homework[] h = new homework[nhomework];
josh s;
boolean test = true;
Sound m;

static final int SPLASH = 0;
static final int PLAY = 1;
static final int LOSE = 2;
int gameState = SPLASH;

void setup()
{
  size(1200,600);
  //fullScreen();
  m = new Sound(this,"Battle.wav");
 Ani.init(this);
  gameStateChange(SPLASH);
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
  background(0,0,0);
  s.display();
  s.update();
  s.check();
}

void lose_keyPressed()
{
  gameStateChange(PLAY);
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
  background(255,100,200);
  s.display();
  s.update();
  s.check();
  textSize(60);
  text("Press Return to Begin", 350, height/3);
}

void splash_keyPressed()
{
  gameStateChange(PLAY);
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
  h[i] = new homework("homework"+i);
 }
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
 m.display();
 m.update();
}


void game_keyPressed()
{
   s.acceleration.x = s.acceleration.x * (-1.0);
  s.velocity.x = s.velocity.x * (-1.0);
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
