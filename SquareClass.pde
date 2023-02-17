class SquareClass {
    int id;
    float xPos, yPos, w, h;
    ControlClass control;
    SquareClass(float xPosTMP, float yPosTMP, float wTMP, float hTMP, int id, ControlClass control) {
       xPos = xPosTMP;
       yPos = yPosTMP;
       w = wTMP;
       h = hTMP;
       this.id = id;
       this.control = control;
    }
    
    void draw() {
      rect(xPos, yPos, w, h);
    }
    
}
