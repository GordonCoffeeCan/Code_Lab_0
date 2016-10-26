PVector pos;
PVector speed;

void setup(){
  size(500, 500);
  
  pos = new PVector();
  pos.x = 10;
  pos.y = 50;
  
  speed = new PVector(2, 3);
}

void draw(){
  //pos.x += speed.x;
  //pos.y += speed.y;
  pos.add(speed);
  
  ellipse(pos.x, pos.y, 50, 50);
}