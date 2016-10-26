float posX[];
float posY[];

float speedX[];
float speedY[];

void setup() {
  size(600,600);
  
  posX = new float[1000];
  posY = new float[posX.length];
  speedX = new float[posX.length];
  speedY = new float[posX.length];
  
  for(int i = 0; i < posX.length; i++){
    posX[i] = width/2;
    posY[i] = height/2;
    speedX[i] = random(-5, 5);
    speedY[i] = random(-5, 5);
  }
  
  //posX[0] = 0;
  //posX[1] = 10;
  //posX[2] = 20;
  //posX[3] = 30;
  
  for (int i = 0; i < 10; i++) {
    println("i: " + i);
  }
  
}

void draw() {
  
  for(int um = 0; um < posX.length; um++){
    posX[um] += speedX[um];
    posY[um] += speedY[um];
    ellipse(posX[um], posY[um], 20, 20);
    
    if(posX[um] > width || posX[um] < 0){
      speedX[um] *= -1;
    }
    
    if(posY[um] > height || posY[um] < 0){
      speedY[um] *= -1;
    }
  }
  
  //ellipse(posX[0], posY[0], 20, 20);
  //ellipse(posX[1], posY[1], 20, 20);
  //ellipse(posX[2], posY[2], 20, 20);
  
  //for(int x = 0; x < 100; x++){
  //  for(int y = 0; y < 100; y++){
  //    ellipse(x * 20, y * 20, 20, 20);
  //  }
  //}
}