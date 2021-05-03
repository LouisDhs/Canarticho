
class Ball { //création de la classe Ball avec initialisation du principe de taille(size) vitesse X et vitesse Y
 PVector pos;
 int size;
 int speedX;
 int speedY;
 
 Ball(int _size){
 pos = new PVector(width/2, height/2);
 size = _size;
 speedX=(int)random(2, 10);
 speedY=(int)random(2, 10);
 }
 
  void Display(){
  fill(0, 0, 255);
  ellipse(pos.x, pos.y, size, size); 
  pos.x += speedX;
  pos.y += speedY;
  if (pos.x >= height-size/2)
  {
    speedX *=-1;
  }
  if (pos.x+speedX <= size/2)
  {
    speedX *=-1;
  }
  if (pos.y >= width-size/2)
  {
    speedY *=-1;
  }
  if (pos.y <= size/2)
  {
    speedY *=-1;
  }
}
}

Ball balls[] = new Ball[1000];





void setup() {
 size(600, 600);
 fill(255, 0, 0);
 ellipse(width/2, height/2, 50, 50);
 for(int i = 0; i < balls.length; i++) {
 balls[i] = new Ball(10);
}
}
void draw(){
  background(255, 204, 0);
  for(int i = 0; i < balls.length; i++) {
 balls[i].Display();
}
}
