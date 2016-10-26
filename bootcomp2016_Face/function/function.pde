int i = 0;
int red = 0;
float posX;
float posY;
float speedX = 10;
float speedY;

void setup(){
  size(600, 400);
  //println("Hello World");
  speedY = speedX * 2/3;
}

void draw(){
  if(posX > width || posX < 0){
    speedX *= -1;
    fill(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
  }
  
  if(posY > height || posY < 0){
    speedY *= -1;
    fill(int(random(0, 255)), int(random(0, 255)), int(random(0, 255)));
  }
  
  posX += speedX;
  posY += speedY;
  ellipse(posX, posY, 30, 30);
}