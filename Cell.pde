class Cell {
  Cell[] neighbors;
  boolean[] walls;
  PVector pos;
  PVector dim;
  
  public Cell(int x, int y, int scale) {
    pos = new PVector(x*scale, y*scale);
    dim = new PVector(x*scale+scale, y*scale+scale);
    walls = new boolean[]{false, false, false, false};
  }
  
  public void addNeighbors(Cell[] neighbors) {
    this.neighbors = neighbors;
  }
  
  public void show() {
    if (!walls[0]) {
      line(pos.x, pos.y, dim.x, pos.y);
    }
    if (!walls[1]) {
      line(dim.x, pos.y, dim.x, dim.y);
    }
    if (!walls[2]) {
      line(pos.x, dim.y, dim.x, dim.y);
    }
    if (!walls[3]) {
      line(pos.x, pos.y, pos.x, dim.y);
    }
  }
}
