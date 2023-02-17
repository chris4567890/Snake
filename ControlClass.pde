class ControlClass {
  byte direction = 1;
  float speed;
  SnakeClass snake;
  ControlClass(int id) {
    this.id = id;
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
