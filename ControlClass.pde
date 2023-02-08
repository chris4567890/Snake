class ControlClass {
byte direction = 0;  
int speed, keyCode, screenWidth, screenHeight;
SquareClass square;
  
   ControlClass(SquareClass square, int keyCode, int speed, int screenWidth, int screenHeight){
    this.screenWidth = screenWidth;
    this.screenHeight = screenHeight;
    this.speed = speed;  
    this.square = square;
    this.keyCode = keyCode;
  }
  
  
  void keyPressed(){
    
    switch(keyCode){
      case UP:
        if(square.yPos > 0){
           direction = 1; 
           square.yPos = square.yPos-speed;
          
        }
        break;
      case DOWN:
        direction = -1;
        if(square.yPos < screenHeight-square.h){
          square.yPos = square.yPos+speed;
        }
        break;
      case LEFT:
        if(square.xPos > 0){
          direction = 2;
          square.xPos = square.xPos-speed;
        }
        break;
      case RIGHT:
        if(square.xPos < screenWidth-square.w){
          square.xPos = square.xPos+speed;
        }
        break;
    }
  }  
}


 
  
