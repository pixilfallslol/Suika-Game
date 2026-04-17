class Apple extends Fruit{
  public Apple(float x, float y, Container c){
    super(x,y,c,120);
    yoffs = 10;
  }
  
  Fruit createNext(float x, float y){
    return new Pear(x,y,c);
  }
  
  void show(){
    image(imgs[5],x,y,rad,rad);
  }
}
