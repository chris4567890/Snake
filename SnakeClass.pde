class SnakeClass {
 ArrayList<SquareClass> squares = new ArrayList<SquareClass>();
 int direction, id, posX, posY, newSquarePosX, newSquarePosY,x,y,w,h;
 SquareClass square;
 SnakeClass(int direction,int id, int posX, int posY, SquareClass square ,int newSquarePosX, int newSquarePosY){
   this.direction = direction;
   this.id = id;
   this.posX = posX;
   this.posY = posY;
   this.square = square;
   this.newSquarePosX = newSquarePosX;
   this.newSquarePosY = newSquarePosY;
  }
  
  void addTheSquares(int x, int y, int w, int h,int id){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.id = id;
    SquareClass sc = new SquareClass(x,y,w,h,id);
    squares.add(sc);
    
  }
  
  void draw(){
    if(squares[0].xPos + squares[0].w && squares[0].xPos > FoodClass.xPos && squares[0].yPos < ){
    
    }    
    
  }
  
  
  
}
