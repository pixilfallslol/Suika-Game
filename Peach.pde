class Peach extends Fruit{
  public Peach(float x, float y, Container c){
    super(x,y,c,160);
    yoffs = -3;
  }
  
  Fruit createNext(float x, float y){
    return new Pineapple(x,y,c);
  }
  
  void show(){
    image(imgs[7],x,y,rad,rad);
  }
}
