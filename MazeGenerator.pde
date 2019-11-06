Maze maze;
int scale = 30;

void setup() {
  size(600, 600);
  maze = new Maze(width/30, height/30, scale);
}

void draw() {
  maze.show();
  noLoop();
}
