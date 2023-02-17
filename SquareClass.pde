class SquareClass {
    int id;
    float xPos, yPos, w, h;
    
    SquareClass(float xPosTMP, float yPosTMP, float wTMP, float hTMP, int id) {
       xPos = xPosTMP;
       yPos = yPosTMP;
       w = wTMP;
       h = hTMP;
       this.id = id;
    }
    
    void draw() {
      rect(xPos, yPos, w, h);
    }
    
}
