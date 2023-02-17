class FoodClass{
    float xPos, yPos, w,h,screenWidth,screenHeight;
    SquareClass square;
    FoodClass(float _w, float _h, float _screenWidth, float _screenHeight, SquareClass _square){
      screenWidth = _screenWidth;
      screenHeight = _screenHeight;
      xPos = random(0,screenWidth-w);
      yPos = random(0,screenHeight-h);
      w = _w;
      h = _h;
      square = _square;
    };
  //remind to ask for hitbox class.
  /*boolean newPosition(xPos < square.xPos+square.w && xPos+w > square.xPos && yPos < square.yPos+square.h && h + yPos > square.yPos){
    xPos = random(0,screenWidth-w);
    yPos = random(0,screenHeight-h);
  }*/
  
    void draw(){
    //newPosition;
    
      if(xPos < square.xPos+square.w && xPos+w > square.xPos && yPos < square.yPos+square.h && h + yPos > square.yPos){
       xPos = random(0,screenWidth-w);
       yPos = random(0,screenHeight-h);
      //createFoodFigure(xPos,yPos,w,h);
      //SnakeClass.addLeSquares();
      
      }else{
      //createFoodFigure(xPos,yPos,w,h);
        rect(xPos,yPos,w,h);
      }
    }  
}
