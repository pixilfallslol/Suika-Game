class Melon extends Fruit{
  public Melon(float x, float y, Container c){
    super(x,y,c,200);
    yoffs = -3;
  }
  
  Fruit createNext(float x, float y){
    return new Watermelon(x,y,c);
  }
  
  void show(){
    image(imgs[9],x,y,rad,rad);
  }
}
