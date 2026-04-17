class Dekopon extends Fruit{
  public Dekopon(float x, float y, Container c){
    super(x,y,c,80);
    yoffs = 3;
  }
  
  Fruit createNext(float x, float y){
    return new Orange(x,y,c);
  }
  
  void show(){
    image(imgs[3],x,y,rad,rad);
  }
}
