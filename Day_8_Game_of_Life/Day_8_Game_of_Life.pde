int cellSize = 10;
int maxX = 0;
int maxY = 0;
Cell[][] cells; 

int gameState = 0; //state of the game 0 = creating world 1 = running it

void setup()
{
  //size(1200,900);
  fullScreen();
  maxX = width/cellSize;
  maxY = height/cellSize;
  cells = new Cell[maxX][maxY]; //forms rows and columns
  
  for(int y = 0; y < maxY; y = y + 1)
  {
  for(int x = 0; x < maxX; x = x + 1)
  {
    cells[x][y] = new Cell(x,y,cellSize);
    
  }
  }
 // cells[0][0] = new Cell(0,0,cellSize);
//cells[0][1] = new Cell(0,1,cellSize);
}

void draw()
{
   for(int y = 0; y < maxY; y = y + 1)
  {
  for(int x = 0; x < maxX; x = x + 1)
  {
  cells[x][y].display();
  cells[x][y].check();
  
  }
}
  if(gameState == 1)
  {
 for(int y = 0; y < maxY; y = y + 1)
  {
  for(int x = 0; x < maxX; x = x + 1)
  {
    cells[x][y].isLive = cells[x][y].nextLive;
}
  }
}
}

void mousePressed()
{
  if(gameState == 0)
  {
  int mx = mouseX;
  int my = mouseY;
   for(int y = 0; y < maxY; y = y + 1)
  {
  for(int x = 0; x < maxX; x = x + 1)
  {
  cells[x][y].click(mx,my);
  }
}
  println(mouseX+";"+mouseY);
}
}

void keyPressed()
{
  if(gameState == 1)
  {
    gameState = 0;
  }
  else
  {
    gameState = 1;
  }
}
