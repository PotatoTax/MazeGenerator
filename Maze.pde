class Maze {
  Cell[][] cells;
  
  public Maze(int mazeWidth, int mazeHeight, int scale) {
    cells = new Cell[mazeHeight][mazeWidth];
    for (int y = 0; y < mazeHeight; y++) {
      for (int x = 0; x < mazeWidth; x++) {
        cells[y][x] = new Cell(x, y, scale);
      }
    }
    for (int y = 0; y < mazeHeight; y++) {
      for (int x = 0; x < mazeWidth; x++) {
        Cell[] neighbors = new Cell[]{null, null, null, null};
        if (y > 0) {
          neighbors[0] = cells[y-1][x];
        }
        if (x < mazeWidth - 1) {
          neighbors[1] = cells[y][x+1];
        }
        if (y < mazeHeight - 1) {
          neighbors[2] = cells[y+1][x];
        }
        if (x > 0) {
          neighbors[3] = cells[y][x-1];
        }
        cells[y][x].addNeighbors(neighbors);
      }
    }
  }
  
  public void show() {
    for (Cell[] row : cells) {
      for (Cell cell : row) {
        cell.show();
      }
    }
  }
}
