import peasy.*;
import picking.*;
Picker picker;
PeasyCam cam;
int cellSize = 10;
int maxX = 10;
int maxY = 10;
int maxZ = 10;
Cell[][][] cells = new Cell[maxX][maxY][maxZ]; 

int gameState = 0; //state of the game 0 = creating world 1 = running it

void setup()
{
  size(1200,800,P3D); //P3D is a constant that permits 3D
  
   picker = new Picker(this);
  cam = new PeasyCam(this, 300);
  int cellCounter = 0;
  for(int y = 0; y < maxY; y = y + 1)
  {
  for(int x = 0; x < maxX; x = x + 1)
  {
    for(int z = 0; z < maxZ; z = z + 1)
  {
    cells[x][y][z] = new Cell(x,y,z,cellSize,cellCounter);
    if(random(0,1) > 0.5) cells[x][y][z].isLive = true;
    cellCounter = cellCounter + 1;
  }
  }
  }
  }


void draw()
{
  background(50);
  noStroke();
  lights();
  rotateX(radians(30));
  rotateY(radians(15));
  for(int y = 0; y < maxY; y = y + 1)
  {
  for(int x = 0; x < maxX; x = x + 1)
  {
    for(int z = 0; z < maxZ; z = z + 1)
  {
     //picker.start cells[x][y][z].(id);
    cells[x][y][z].display();
    cells[x][y][z].check();
  }
  }
  }
  if(gameState == 1)
  {
 for(int y = 0; y < maxY; y = y + 1)
  {
  for(int x = 0; x < maxX; x = x + 1)
  {
    for(int z = 0; z < maxZ; z = z + 1)
    cells[x][y][z].isLive = cells[x][y].nextLive;
}
  }
}
  //box(20);
}

void mousePressed()
{
  int id = picker.get(mouseX, mouseY);
  for(int y = 0; y < maxY; y = y + 1)
  {
  for(int x = 0; x < maxX; x = x + 1)
  {
    for(int z = 0; z < maxZ; z = z + 1)
  {
    
    cells[x][y][z].display();
    
  }
  }
  }
  println(id);
}

void keyPressed()
{
  if(gameState == 1)
  {
    gameState = 0;
  }
  else
  {
    
  }
