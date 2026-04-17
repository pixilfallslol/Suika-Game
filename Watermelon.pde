class Watermelon extends Fruit{
  public Watermelon(float x, float y, Container c){
    super(x,y,c,220);
    yoffs = -3;
    canMerge = false;
  }
  
  void show(){
    image(imgs[10],x,y,rad,rad);
  }
}
