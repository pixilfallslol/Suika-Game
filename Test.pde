class Test extends Fruit{
  public Test(float x, float y, Container c, float rad){
    super(x,y,c,rad);
  }
  
  void pushOthers(List<Test> f){
    for(int i = 0; i < f.size(); i++){
      Test other = f.get(i);
      float xd = x-other.x;
      float yd = y-other.y;
      float d = sqrt(xd*xd+yd*yd);
      float md = rad;
      if(d<md&&d>0){
        float overlap = (md-d)*0.5;
        float nx = xd/d;
        float ny = yd/d;
        x+=nx*overlap;
        y+=ny*overlap;
        other.x-=nx*overlap;
        other.y-=ny*overlap;
      }
    }
  }
  
  void show(){
    fill(0xff);
    ellipse(x,y,rad,rad);
  }
}
