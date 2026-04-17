import java.util.List;

Container cont;

List<Fruit> fruits;

Spawner s;

String[] IMG_NAMES = {"cherry.png","strawberry.png","grape.png","Dekopon.png"};
PImage[] imgs;

void setup(){
  ellipseMode(CENTER);
  rectMode(CENTER);
  imageMode(CENTER);
  cont = new Container(width/2,height/2);
  fruits = new ArrayList<Fruit>(0);
  s = new Spawner(width/2,100,cont);
  imgs = new PImage[IMG_NAMES.length];
  for(int i = 0; i < IMG_NAMES.length; i++){
    imgs[i] = loadImage(IMG_NAMES[i]);
  }
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
  // Movement and physics.
  for(int i = 0; i < fruits.size(); i++){
    fruits.get(i).update();
  }
  
  // Collisions.
  for(int i = 0; i < fruits.size(); i++){
    fruits.get(i).pushOthers(fruits);
  }
  
  // Merge check.
  for(int i = 0; i < fruits.size(); i++){
    fruits.get(i).tryMerge(fruits);
  }
  
  // Cleanup.
  for(int i = fruits.size()-1; i >= 0; i--){
    if(fruits.get(i).merged){
      fruits.remove(i);
    }
  }
  
  // Render.
  for(int i = 0; i < fruits.size(); i++){
    fruits.get(i).show();
  }
}

void drawSpawner(){
  s.update();
}
