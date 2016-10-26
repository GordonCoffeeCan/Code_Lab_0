
PVector circPos; //declare

float circXSpeed;
float circYSpeed;

void setup(){
  size(800, 600);
  
  fill(#FF0000);
  circPos = new PVector();
  circPos.x = 200;
  circPos.y = 400;
  
  circXSpeed = 2.5;
  circYSpeed = 3.5;
}

void draw(){
  background(0);
  
  circPos.x += circXSpeed;
  circPos.y += circYSpeed;
  
  if(circPos.x >= width || circPos.x <= 0){
    circXSpeed *= -1;
  }
  
  if(circPos.y > height || circPos.y < 0){
    println(circPos.y);
    circYSpeed *= -1;
  }
  
  ellipse(circPos.x, circPos.y, 100, 100);
}
