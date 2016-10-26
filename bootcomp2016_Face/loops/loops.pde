int harry = 0;

float posX[];
float posY[];
float speedX[];
float speedY[];
color colorArray[];

void setup(){
  //while(harry < 10){
  //  println("harry: " + harry);
  //  harry++;
  //}
  size(800, 600);
  
  posX = new float[100];
  posY = new float[posX.length];
  println(posX.length);
  
  speedX = new float[posX.length];
  speedY = new float[posX.length];
  
  colorArray = new color[posX.length];
  
  for(int i = 0; i < posX.length; i++){
    posX[i] = i * 10;
    posY[i] = i * 50;
    speedX[i] = random(0, 10);
    speedY[i] = random(0, 10);
    colorArray[i] = color(int(random(100, 225)), int(random(100, 225)), int(random(100, 225)));
  }
}

void draw(){
  background(#000000);
  for(int i = 0; i < posX.length; i++){
    if(posX[i] > width || posX[i] < 0){
      speedX[i] *= -1;
    }
    
    if(posY[i] > height || posY[i] < 0){
      speedY[i] *= -1;
    }
    posX[i] += speedX[i];
    posY[i] += speedY[i];
    
    fill(colorArray[i]);
    ellipse(posX[i], posY[i], 10, 10);
  }
}