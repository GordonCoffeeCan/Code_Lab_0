int buttonX;
int buttonY;
int buttonWidth;
int buttonHeight;

color mouseOverColor;
color defaultColor;

void setup() {
  size(640, 480);

  buttonX = width/2;
  buttonY = height/2;

  buttonWidth = 80;
  buttonHeight = 70;

  mouseOverColor = color(255, 150, 150);
  defaultColor = color(0, 0, 255);
}

void draw() {
  if ((mouseX >= buttonX) && 
    (mouseX <= buttonX + buttonWidth) &&
    (mouseY >= buttonY) &&
    (mouseY <= buttonY + buttonHeight)) {
    fill(mouseOverColor);
  } else {
    fill(defaultColor);
  }

  rect(buttonX, buttonY, buttonWidth, buttonHeight);
}