/*
This is the first processing example.
It shows coordinates, shapes and color.
My name is matt.
*/

size(400,400); //the size command sets the window size

background(0);

//Face Circle
fill(255, 255, 0);
ellipse(200,200,350,350);

//Eyes
fill(0);
rect(100, 150, 75, 75);
rect(200, 150, 75, 75);
rect(50, 150, 300, 25);

//Mouth
fill(0);
ellipse(250,300,140,140);
fill(255, 100, 100);
ellipse(260,310,100,100);