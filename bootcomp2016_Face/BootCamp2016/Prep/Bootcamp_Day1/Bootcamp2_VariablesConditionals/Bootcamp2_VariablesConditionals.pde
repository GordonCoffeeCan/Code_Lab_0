float x; //declaring variable x
float y;
float xSpeed;
float ySpeed;

color myFillColor;

//setup is a function that is called once at the beginning of our
//program
void setup(){
  size(800, 400);
  //println("Hello World");
  
  x = random(0, width); //init variable x
  //xSpeed = 5.5;
  xSpeed = random(10);
  
  y = random(0, height);
  //ySpeed = 40;
  ySpeed = random(10);
  
  myFillColor = color(255, 255, 0);
}

//draw is called once per frame until the program is stopped
void draw(){
  //background(255, 0, 0);
  //println("Draw");
  fill(myFillColor);
  
  if(y > height || y < 0){
  ySpeed = ySpeed * -1;
  myFillColor = color(
             random(100, 255),
             random(100, 255),
             random(100, 255)
             );
  }
  
  if(x > width || x < 0){
    xSpeed = xSpeed * -1;
    myFillColor = color(
                        random(0, 255), 
                        random(0, 255), 
                        random(0, 255));
    //myFillColor = color(255, 0, 0);
    //println("x is greater than 452");
  } else {
    //myFillColor = color(0, 0, 255);
    //println("x is less than 452");
  }
  
  x = x + xSpeed;
  //y = y + ySpeed;
  y += ySpeed;
  
  //println("x: " + x);
  ellipse(x, y, 100, 100); //using variable x
  
  rect(mouseX, mouseY, 20, 20);
}