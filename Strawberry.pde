class Strawberry extends Fruit{
  public Strawberry(float x, float y, Container c){
    super(x,y,c,30);
  }
  
  Fruit createNext(float x, float y){
    return new Grape(x,y,c);
  }
  
  void show(){
    fill(0xff);
    ellipse(x,y,rad,rad);
  }
}
