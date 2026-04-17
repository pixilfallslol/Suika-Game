class Fruit{
  float x;
  float y;
  float xa = 0.0;
  float ya = 0.0;
  
  Container c;
  
  float gravity = 0.5;
  
  boolean onGround = false;
  
  float PUSH_MARGIN = 80;
  
  float rad;
  
  public Fruit(float _x, float _y, Container _c, float _rad){
    x = _x;
    y = _y;
    c = _c;
    xa = random(-3,3);
    rad = _rad;
  }
  
  void update(){
    ya+=gravity;
    y+=ya;
    x+=xa;
    
    // Left wall.
    if(x<=c.x-c.MARGIN_X+PUSH_MARGIN){
      x = c.x-c.MARGIN_X+PUSH_MARGIN;
      xa = 0;
    }
    // Right wall.
    if(x>=c.x+c.MARGIN_X-PUSH_MARGIN){
      x = c.x+c.MARGIN_X-PUSH_MARGIN;
      xa = 0;
    }
    
    if(y>=c.bby-50){
      ya = 0.0;
      y = c.bby-50;
      onGround = true;
    }else{
      onGround = false;
    }
  }
}
