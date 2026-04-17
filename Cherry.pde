class Cherry extends Fruit{
  public Cherry(float x, float y, Container c){
    super(x,y,c,20);
    yoffs = -13;
  }
  
  Fruit createNext(float x, float y){
    return new Strawberry(x,y,c);
  }
  
  void show(){
    image(imgs[0],x,y,rad,rad);
  }
}
