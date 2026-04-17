class Grape extends Fruit{
  public Grape(float x, float y, Container c){
    super(x,y,c,40);
  }
  
  Fruit createNext(float x, float y){
    return null;
  }
  
  void show(){
    fill(0xff);
    ellipse(x,y,rad,rad);
  }
}
