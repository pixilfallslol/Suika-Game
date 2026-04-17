class Cherry extends Fruit{
  public Cherry(float x, float y, Container c){
    super(x,y,c,20);
  }
  
  Fruit createNext(float x, float y){
    return new Strawberry(x,y,c);
  }
  
  void show(){
    fill(0xff);
    ellipse(x,y,rad,rad);
  }
}
