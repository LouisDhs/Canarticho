PVector pos = new PVector(0, 0);
int speedX = 3;
int speedY = 3;

void setup() {
 size(600, 600);
 fill(255, 0, 0);
 ellipse(width/2, height/2, 50, 50);
}
void draw(){
  background(255, 204, 0);
  fill(0, 0, 255);
  ellipse(pos.x, pos.y, 50, 50); 
  pos.x += speedX;
  pos.y += speedY;
  if (pos.x >= height-25)
  {
    speedX -= random(2, 10);
  }
  if (pos.x <= 25)
  {
    speedX += random(2, 10);
  }
  if (pos.y >= width-25)
  {
    speedY -= random(2, 10);
  }
  if (pos.y <= 25)
  {
    speedY += random(2, 10);
  }
}
