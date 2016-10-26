PVector pos;
PVector speed;

void setup(){
  size(800, 600);
  pos = new PVector(56, 11);
  speed = new PVector(3, 5);
  
  fill(#6AE07D);
}

void draw(){
  background(#52BDE3);
  pos.add(speed);
  if(pos.x > width || pos.x < 50){
    speed.x *= -1;
  }
  if(pos.y > height || pos.y < 50){
    speed.y *= -1;
  }
  noStroke();
  ellipse(pos.x, pos.y, 100, 100);
}