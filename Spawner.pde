class Spawner{
  float x;
  float y;
  
  float yMin;
  float yMax;
  float xMin;
  float xMax;
  float X_MARGIN = 60;
  
  Container c;
  
  boolean debounce = false;
  
  Fruit currFruit;
  Fruit nextFruit;
  
  public Spawner(float _x, float _y, Container _c){
    x = _x;
    y = _y;
    c = _c;
    xMin = c.x-c.MARGIN_X+X_MARGIN;
    xMax = c.x+c.MARGIN_X-X_MARGIN;
    yMin = 0;
    yMax = c.bby;
    currFruit = randomFruit(x,y);
    nextFruit = randomFruit(x,y);
  }
  
  Fruit randomFruit(float x, float y){
    int r = int(random(4));
    switch(r){
      case 0:
        return new Cherry(x,y,c);
      
      case 1:
        return new Strawberry(x,y,c);
      
      case 3:
        return new Grape(x,y,c);
    }
    return new Dekopon(x,y,c);
  }
  
  void update(){
    if(gameOver) return;
    // Make sure mouse doesn't escape container.
    float cx = min(max(mouseX,xMin),xMax);
    x = cx;
    y = min(max(y,yMin),yMax);
    currFruit.x = x;
    currFruit.y = y;
    currFruit.show();
    if(mousePressed&&!debounce){
      fruits.add(currFruit);
      // Shift queue.
      currFruit = nextFruit;
      nextFruit = randomFruit(x,y);
      debounce = true;
    }
    if(debounce&&!mousePressed){
      debounce = false;
    }
  }
}
