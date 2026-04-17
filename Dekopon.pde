class Dekopon extends Fruit{
  public Dekopon(float x, float y, Container c){
    super(x,y,c,40);
    yoffs = -5;
  }
  
  Fruit createNext(float x, float y){
    return null;
  }
  
  void show(){
    image(imgs[3],x,y,rad,rad);
  }
}
