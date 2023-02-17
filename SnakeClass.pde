class SnakeClass {
  ArrayList<Byte> directions = new ArrayList<Byte>();
  int direction, id, posX, posY, x, y, w, h;
  SquareClass square;
  SnakeClass(int direction, int id, SquareClass square) {
    this.id = id;
    this.posX = (int) random(screenWidth/square.w);
    this.posY = (int) random(screenHeight/square.h);
    this.square = square;
    directions.add((byte) direction);
  }

  void addTheSquares() {
    directions.add(directions.get(directions.size()));
  }

  void draw() {
    switch(direction) {
    case -1: //UP
      if (posY>0) {
        posY-=square.h;
      }
      break;
    case 1: //Down
      if (posY+square.h<screenHeight) {
        posY+=square.h;
      }

      break;
    case -2: //LEFT
      if (posX>0) {
        posX-=square.w;
      }
      break;
    case 2: //Right
      if (posX+square.w<screenWidth) {
        posX+=square.w;
      }
      break;
    }

    square.xPos = posX;
    square.yPos = posY;
    square.draw();

    SquareClass tempSquare = square;
    for (int ite = 1; ite < directions.size(); ++ite) {
      switch(directions.get(ite)) {
      case -1: //UP
        tempSquare.yPos -= tempSquare.h;
        break;
      case 1: //Down
        break;
      case -2: //LEFT
        break;
      case 2: //Right
        break;
      }
      tempSquare.draw();
    }

    //if(squares[0].xPos + squares[0].w && squares[0].xPos > FoodClass.xPos && squares[0].yPos < FoodClass[0].yPos){

    //}
  }
}
