float carX1;
float carX2;

float carSpeed1;
float carSpeed2;

void setup(){
  size(640, 480);
  
  carX1 = random(10);
  carX2 = random(50);
  
  carSpeed1 = random(0, 5);
  carSpeed2 = 10;
}

void draw(){
  carX1 += carSpeed1;
  carX2 += carSpeed2;
  
  car(carX1, 82, color(255, 0, 0));
  car(carX2, 400, color(0, 0, 255));
  car(10, 10, color(50, 50, 50));
}

//function to check if the mouse is over a rectangle,
//returns true if it is, false if it is not
boolean mouseOverRect(float x, float y, 
                      float width, float height){                       
   if(mouseX >= x && mouseX <= x + width &&
     mouseY >= y && mouseY <= y + height){
       return true;
     } else {
       return false;
     }
}

//this is a function that returns
//nothing, but draws a car, with the
//x, y and color we pass to it
void car(float x, float y, color c){
  println("Make a car!");
  if(mouseOverRect(x, y, 100, 50)){
    fill(255, 255, 255);
  } else {
    fill(c);
  }
  rect(x, y, 100, 50);
  fill(0, 0, 0);
  rect(x + 75, y,      20, 10);
  rect(x + 75, y + 40, 20, 10);
  rect(x,      y,      20, 10);
  rect(x,      y + 40, 20, 10);
}