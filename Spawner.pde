class Spawner{
  float x;
  float y;
  
  float yMin;
  float yMax;
  float xMin;
  float xMax;
  
  Container c;
  
  boolean debounce = false;
  
  public Spawner(float _x, float _y, Container _c){
    x = _x;
    y = _y;
    c = _c;
    xMin = c.x-c.MARGIN_X;
    xMax = c.x+c.MARGIN_X;
    yMin = 0;
    yMax = c.bby;
  }
  
  void update(){
    float cx = min(max(mouseX,xMin),xMax);
    x = cx;
    y = min(max(y,yMin),yMax);
    if(mousePressed&&!debounce){
      addFruit(x,y);
      debounce = true;
    }
    if(debounce&&!mousePressed){
      debounce = false;
    }
  }
}
