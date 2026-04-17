class Pear extends Fruit{
  public Pear(float x, float y, Container c){
    super(x,y,c,140);
    yoffs = -3;
  }
  
  Fruit createNext(float x, float y){
    return new Peach(x,y,c);
  }
  
  void show(){
    image(imgs[6],x,y,rad,rad);
  }
}
