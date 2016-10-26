int red = 0;
float posX;  //declare variable
float speedX;
float posY;
float speedY;
boolean isMattCool = false;

//is called once at the begining of your program
void setup() {
  size(600, 400);
  println("i don't know");

  posX = 50.6; //init posX
  speedX = 10;
  posY = 20;
  speedY = 7.5;

  background(0);
}

//is called over and over and over and over and over...
//once per frame, really
void draw() {
  red += 1;
  fill(red, 0, 0);
  //ellipse(mouseX, mouseY, 30, 30);

  posX += speedX;
  posY += speedY;

  if(isMattCool){ 
    println("Matt's cool");
  } else {
    println("Matt's not so cool.");
  }

  fill(0, 0, 255);

  if (posX > width || posX <= 0) {
    speedX *= -1;
  } else if (posX > 200 && posX < 300) {
    fill(255, 0, 0);
  }
  
  if(posY > height || posY <= 0){
    speedY *= -1;
  }

  ellipse(posX, posY, 50, 50);
}