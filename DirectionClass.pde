class DirectionClass {
  boolean up, down, left, right;

  DirectionClass(int direction) {
    setDirection(dir);
  }
  void setDirection(int direction) {
    switch(direction) {
    case UP:
      up = true;
      down = false;
      left = false;
      right = false;
      break;
    case DOWN:
      up = false;
      down = true;
      left = false;
      right = false;
      break;
    case LEFT:
      up = false;
      down = false;
      left = true;
      right = false;
      break;
    case RIGHT:
      up = false;
      down = false;
      left = false;
      right = true;
      break;
    }
    boolean isDirection(int direction) {
      dir = direction;

      return dir;
    }
  }
  
}
