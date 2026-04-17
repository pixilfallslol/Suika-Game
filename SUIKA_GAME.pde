import java.util.List;

Container cont;

List<Test> fruits;

Spawner s;

void setup(){
  ellipseMode(CENTER);
  rectMode(CENTER);
  cont = new Container(width/2,height/2);
  fruits = new ArrayList<Test>(0);
  s = new Spawner(width/2,300,cont);
  size(1280,720,P2D);
}

void draw(){
  background(0xff);
  drawContainer();
  drawFruits();
  drawSpawner();
}

void drawContainer(){
  cont.show();
}

void addFruit(float x, float y){
  Test newFruit = new Test(x,y,cont,50);
  fruits.add(newFruit);
}

void drawFruits(){
  for(int i = 0; i < fruits.size(); i++){
    Test cf = fruits.get(i);
    cf.update();
    cf.pushOthers(fruits);
    cf.show();
  }
}

void drawSpawner(){
  s.update();
}
