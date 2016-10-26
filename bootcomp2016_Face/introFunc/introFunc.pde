PVector carPos;
float carSpeed;
PVector vanPos;
float vanSpeed;
color carColor;
color vanColor;

void setup(){
  size(500, 500);
  carPos = new PVector(width/2, height/2);
  carSpeed = 3;
  vanSpeed = 2;
  vanPos = new PVector(width/2, height/4);
  carColor = #4981F0;
  vanColor = #E37D4E;
}

void draw(){
  background(#CCCCCC);
  drawCar(carPos, carColor, carSpeed);
  drawCar(vanPos, vanColor, vanSpeed);
  
}

void drawCar(PVector carPos, color carColor, float speed){
  fill(carColor);
  rect(carPos.x, carPos.y, 100, 70);
  fill(0);
  
  carPos.x += speed;
  
  ellipse(carPos.x + 15, carPos.y + 70, 50, 50);
  ellipse(carPos.x + 85, carPos.y + 70, 50, 50);
  
  if(carPos.x > width - 100 || carPos.x < 0){
    speed *= -1;
  }
}

float addNums(float a, float b){
  return a + b;
}