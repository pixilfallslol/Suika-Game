class Container{
  int x;
  int y;
  
  int BOX_W = 100;
  int BOX_H = 400;
  int MARGIN_X = 200;
  int MARGIN_Y = 175;
  
  float bby;
  
  public Container(int _x, int _y){
    x = _x;
    y = _y;
    bby = y+MARGIN_Y;
  }
  
  void show(){
    fill(0xff);
    // Bottom box.
    rect(x,bby,BOX_H+MARGIN_Y,BOX_W/2);
    
    // Side boxes.
    rect(x-MARGIN_X,y,BOX_W,BOX_H);
    rect(x+MARGIN_X,y,BOX_W,BOX_H);
  }
}
