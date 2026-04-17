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
  
  boolean merged = false;
  
  float yoffs = 0.0;
  
  boolean canMerge = true;
  
  public Fruit(float _x, float _y, Container _c, float _rad){
    x = _x;
    y = _y;
    c = _c;
    xa = random(-2,2);
    rad = _rad;
  }
  
  void pushOthers(List<Fruit> f){
    for(int i = 0; i < f.size(); i++){
      Fruit other = f.get(i);
      // Vector between fruits.
      float xd = x-other.x;
      float yd = y-other.y;
      // Distance between 2 fruits.
      float d = sqrt(xd*xd+yd*yd);
      // Minimum allowed distance.
      float md = (rad+other.rad)*0.5;
      // Check for overlap.
      if(d<md&&d>0){
        // How much they overlap.
        float overlap = (md-d)*0.5;
        // Normalize the dire.
        float nx = xd/d;
        float ny = yd/d;
        // Push both apart equally.
        x+=nx*overlap;
        y+=ny*overlap;
        other.x-=nx*overlap;
        other.y-=ny*overlap;
      }
    }
  }
  
  void tryMerge(List<Fruit> f){
    for(int i = 0; i < f.size(); i++){
      Fruit other = f.get(i);
      float xd = x-other.x;
      float yd = y-other.y;
      float d = sqrt(xd*xd+yd*yd);
      float md = (rad+other.rad)*0.5;
      if(d<md&&d>0){
        // Only the same type and check if its not merged already.
        if(getClass()==other.getClass()&&!merged&&!other.merged&&canMerge&&other.canMerge){
          // spawn pos.
          float nx = (x+other.x)*0.5;
          float ny = (y+other.y)*0.5;
          // Create next tier fruit.
          Fruit nf = createNext(nx,ny);
          if(nf!=null){
            fruits.add(nf);
          }
          // Mark for termination.
          merged = true;
          other.merged = true;
        }
      }
    }
  }
  
  Fruit createNext(float x, float y){
    return null;
  }
  
  void update(){
    ya+=gravity;
    y+=ya;
    x+=xa;
    xa*=0.95;
    
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
    
    if(y>c.bby-rad+yoffs){
      ya = 0.0;
      y = c.bby-rad+yoffs;
      onGround = true;
    }
  }
  
  void show(){
    fill(0xff);
    ellipse(x,y,rad,rad);
  }
}
