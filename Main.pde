int screenWidth = 750;
int screenHeight = 500;
float speed = 3;
int movesMoved = 0;


SquareClass sq1 = new SquareClass(50, 50, 50, 50, 1);
SnakeClass snake = new SnakeClass(1, 1, (int) random(screenWidth-10),(int) random(screenHeight-10), sq1);
FoodClass fc1 = new FoodClass(25, 25, screenWidth, screenHeight, sq1);

void settings() {
  size(screenWidth, screenHeight);
}


void setup() {
  background(255);
  frameRate(60);
}

void draw() {
  if (((millis()*speed)/1000)-movesMoved>0) {
    movesMoved++;
    background(255);
    snake.draw();
    fc1.draw();
  }
}

void keyPressed() {
  ControlClass control = new ControlClass(snake, speed, screenWidth, screenHeight);
  control.keyPressed();
  snake.direction = control.direction;
}
