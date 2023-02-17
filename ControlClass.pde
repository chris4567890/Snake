class ControlClass {
  byte direction = 1;
  float speed;
  int screenWidth, screenHeight;
  SnakeClass snake;

  ControlClass(SnakeClass snake, float speed, int screenWidth, int screenHeight) {
    this.screenWidth = screenWidth;
    this.screenHeight = screenHeight;
    this.speed = speed;
    this.snake = snake;
  }


  void keyPressed() {
    switch(keyCode) {
    case UP:
      direction = -1;
      break;
    case DOWN:
      direction = 1;
      break;
    case LEFT:
      direction = -2;
      break;
    case RIGHT:
      direction = 2;
      break;
    }
  }
}
