int screenWidth = 750;
int screenHeight = 500;
int speed = 10;


SquareClass sq1 = new SquareClass(50,50,50,50,1);
FoodClass fc1 = new FoodClass(25,25,screenWidth,screenHeight,sq1);

void settings(){
  size(screenWidth,screenHeight);
}


void setup(){
  background(255);
  frameRate(30);
  
}

void draw(){
  sq1.draw();
  fc1.draw();
}

void keyPressed() {
  ControlClass control = new ControlClass(sq1, keyCode,speed, screenWidth, screenHeight);  
  control.keyPressed();
  
}
