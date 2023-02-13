class SnakeClass {
 ArrayList<Byte> squareDelays = new ArrayList<Byte>();
 int direction, id, posX, posY,x,y,w,h;
 SquareClass square;
 SnakeClass(int direction,int id, int posX, int posY, SquareClass square){
   this.direction = direction;
   this.id = id;
   this.posX = posX;
   this.posY = posY;
   this.square = square;
  }
  
  void addTheSquares(){
    squareDelays.add(squareDelays.get(squareDelays.size()));
  }
  
  void draw(){
    
    switch(direction) {
    case -1: //UP
      if(posY>0){
        posY-=square.h;
      }
      break;
    case 1: //Down
      if(posY<screenHeight){
        posY+=square.h;
      }
      
      break;
    case -2: //LEFT
      if(posX>0){
        posX-=square.w;
      }
      break;
    case 2: //Right
      if(posX<screenWidth){
        posX+=square.w;
      }
      break;
    }
    
    square.xPos = posX;
    square.yPos = posY;
    square.draw();
    
    //if(squares[0].xPos + squares[0].w && squares[0].xPos > FoodClass.xPos && squares[0].yPos < FoodClass[0].yPos){
    
    //}    
    
  }
  
  
  
}
