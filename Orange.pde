class Orange extends Fruit{
  public Orange(float x, float y, Container c){
    super(x,y,c,110);
    yoffs = 8;
  }
  
  Fruit createNext(float x, float y){
    return new Apple(x,y,c);
  }
  
  void show(){
    image(imgs[4],x,y,rad,rad);
  }
}
