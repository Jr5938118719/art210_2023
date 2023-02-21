int cellSize = 10;
int maxX = 0;
int maxY = 0;
Cell[][] cells; 

void setup()
{
  size(1200,900);
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
  }
}
}
