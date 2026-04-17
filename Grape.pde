class Grape extends Fruit{
  public Grape(float x, float y, Container c){
    super(x,y,c,60);
    yoffs = -5;
  }
  
  Fruit createNext(float x, float y){
    return new Dekopon(x,y,c);
  }
  
  void show(){
    image(imgs[2],x,y,rad,rad);
  }
}
