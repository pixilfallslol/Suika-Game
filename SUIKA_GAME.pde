import java.util.List;

Container cont;

List<Fruit> fruits;

Spawner s;

void setup(){
  ellipseMode(CENTER);
  rectMode(CENTER);
  cont = new Container(width/2,height/2);
  fruits = new ArrayList<Fruit>(0);
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
  Fruit newFruit = new Fruit(x,y,cont,50);
  fruits.add(newFruit);
}

void drawFruits(){
  for(int i = 0; i < fruits.size(); i++){
    fruits.get(i).update();
  }
  
  for(int i = 0; i < fruits.size(); i++){
    fruits.get(i).pushOthers(fruits);
  }
  
  for(int i = 0; i < fruits.size(); i++){
    fruits.get(i).tryMerge(fruits);
  }
  
  for(int i = fruits.size()-1; i >= 0; i--){
    if(fruits.get(i).merged){
      fruits.remove(i);
    }
  }
  
  for(int i = 0; i < fruits.size(); i++){
    fruits.get(i).show();
  }
}

void drawSpawner(){
  s.update();
}
