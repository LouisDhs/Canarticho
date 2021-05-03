PVector pos = new PVector(0, 0);
int posX = 3;
int posY = 3;

void setup() {
 size(600, 600);
 fill(255, 0, 0);
 ellipse(width/2, height/2, 50, 50);
}
void draw(){
  background(255, 204, 0);
  fill(0, 0, 255);
  ellipse(pos.x, pos.y, 50, 50); 
  pos.x += posX;
  pos.y += posY;
}
