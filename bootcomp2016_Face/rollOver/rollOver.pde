PVector rectPos;
PVector rectSize;
float bulletPosX;
float bulletSpeed;

void setup(){
  size(800, 600);
  rectPos = new PVector(100, 50);
  rectSize = new PVector(200, 300);
  bulletPosX = 0;
  bulletSpeed = 3;
}

void draw(){
  rect(rectPos.x, rectPos.y, rectSize.x, rectSize.y);
  rollOver(rectPos.x, rectPos.y, rectSize.x, rectSize.y);
  
}

boolean rollOver(float x, float y, float rectW, float rectH){
  boolean result = false;
  fill(#0000FF);
  if(mouseX >= x && mouseX < x + rectW && mouseY >= y && mouseY < y + rectH){
    fill(#FF0000);
    bulletPosX += bulletSpeed;
    ellipse(bulletPosX, random(y, y + rectH), 30, 30);
    result = true;
  }
  return result;
}