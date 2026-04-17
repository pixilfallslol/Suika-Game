class Strawberry extends Fruit{
  public Strawberry(float x, float y, Container c){
    super(x,y,c,30);
    yoffs = -10;
  }
  
  Fruit createNext(float x, float y){
    return new Grape(x,y,c);
  }
  
  void show(){
    image(imgs[1],x,y,rad,rad);
  }
}
