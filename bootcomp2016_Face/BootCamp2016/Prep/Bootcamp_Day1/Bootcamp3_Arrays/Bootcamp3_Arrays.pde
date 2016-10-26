float xs[]; //declare a float array called "xs"
float ys[];

float xSpeeds[];
float ySpeeds[];

void setup(){
  size(600, 400);
  
  xs = new float[200]; //this is how you initialize an array
  //xs[0] = 200;  //init the first slot in the array
  //xs[1] = 100;  //init the second slot in the array
  
  ys      = new float[xs.length]; //init ys to the length of the xs array
  xSpeeds = new float[xs.length];
  ySpeeds = new float[xs.length];
  
  //runs code in loop from 0 (what "i" is inited to) to length of
  //"xs" array, incrementing "i" by 1 everytime it loops
  for(int i = 0; i < xs.length; i++){
    xs[i]      = random(width);
    ys[i]      = random(height);
    xSpeeds[i] = random(10);
    ySpeeds[i] = random(10);
  }
}

void draw(){

  //ellipse(xs[0], ys[0], 50, 50);
  //ellipse(xs[1], ys[1], 50, 50);
  //xs[0] += xSpeeds[0];
  //xs[1] += xSpeeds[1];
  //ys[0] += ySpeeds[0];
  //ys[1] += ySpeeds[1];
  
  for(int i = 0; i < xs.length; i++){
    ellipse(xs[i], ys[i], 50, 50);
    
    xs[i] += xSpeeds[i];
    ys[i] += ySpeeds[i];

    if(xs[i] <= 0 || xs[i] >= width){
      xSpeeds[i] *= -1; //*= multiples by -1 and puts it into the var
    }
    if(ys[i] <= 0 || ys[i] >= height){
      ySpeeds[i] *= -1;
    }
  }
}