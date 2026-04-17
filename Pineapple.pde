class Pineapple extends Fruit{
  public Pineapple(float x, float y, Container c){
    super(x,y,c,180);
    yoffs = -3;
  }
  
  Fruit createNext(float x, float y){
    return new Melon(x,y,c);
  }
  
  void show(){
    image(imgs[8],x,y,rad,rad);
  }
}
