class SnakeClass {
 ArrayList<Byte> squareDelays = new ArrayList<Byte>();
 int direction, id, posX, posY,x,y,w,h;
 SquareClass square;
 SnakeClass(int direction,int id, SquareClass square){
   this.direction = direction;
   this.id = id;
   this.posX = (int) random(screenWidth/square.w);
   this.posY = (int) random(screenHeight/square.h);
   this.square = square;
  }
  
  void addTheSquares(){
    squareDelays.add(squareDelays.get(squareDelays.size()));
  }
  
<<<<<<< Updated upstream
  void draw(){
=======
  switch(direction){
      case 1:
        if(square.yPos > 0){
          square.yPos = square.yPos-speed;
        }
        break;
      case -1:
        while(direction == -1 && square.yPos < screenHeight - square.h){
          square.yPos = square.yPos+speed;
        }
        break;
      case 2:
        while(direction == 2 && square.xPos > 0 ){
          square.xPos = square.xPos-speed;
        }
        break;
      case -2:
        while(direction == -2 && square.xPos < screenWidth-square.w){
          square.xPos = square.xPos+speed;
          
        }
        break;
    }
  
  /*void draw(){
    if(squares[0].xPos + squares[0].w && squares[0].xPos > FoodClass.xPos && squares[0].yPos < Foodclass.h && squares[0].h > squares[0].y  ){
>>>>>>> Stashed changes
    
    switch(direction) {
    case -1: //UP
      if(posY>0){
        posY-=square.h;
      }
      break;
    case 1: //Down
      if(posY+square.h<screenHeight){
        posY+=square.h;
      }
      
      break;
    case -2: //LEFT
      if(posX>0){
        posX-=square.w;
      }
      break;
    case 2: //Right
      if(posX+square.w<screenWidth){
        posX+=square.w;
      }
      break;
    }
    
    square.xPos = posX;
    square.yPos = posY;
    square.draw();
    
    //if(squares[0].xPos + squares[0].w && squares[0].xPos > FoodClass.xPos && squares[0].yPos < FoodClass[0].yPos){
    
    //}    
    
  }*/
  
  
  
}
