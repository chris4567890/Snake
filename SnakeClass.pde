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
  }
}