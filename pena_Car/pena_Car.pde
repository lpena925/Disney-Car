PImage img;
PImage img1;
PImage img2;
PImage img3;
int x;
int y;
int carX = 250;
int carY = 250;
int wheelOffsetX = 43;
int wheelOffsetY = 33;
int wheelSize = 40;
int antennaOffsetX = 60;
int antennaOffsetY = 50;
int antennaLength = 80;
int headSize = 20;
int earOffsetX = 10;
int earOffsetY = 10;
int earSize = 15;
boolean run;

void setup(){
  size(500, 500);
  background(0);
  run = false;
  img = loadImage("mickeyheads.jpg");
  img1 = loadImage("onceuponatime.jpg");
  img2 = loadImage("goingtodisney.jpeg");
  img3 = loadImage("cinderellacastle.jpg");
}

void draw (){
  background(11, 7, 77);
  noStroke();
  fill(242, 231, 169);
  ellipse(450, 50, 50, 50);
  //grass
  fill(43, 201, 78);
  rectMode(CORNER);
  rect(0, 250, 500, 250);
  fill(247, 102, 148);
  if(run){
  image(img1, width/5, 0, 280, 175);
  image(img3, width-100, height-400, 125, 150);
  }
  else{
    image(img2, width/5, 0, 280, 175);
  }
  //car
  rectMode(CENTER);
  rect(carX, carY, 150, 100, 20);
  fill(0);
  ellipse(carX-wheelOffsetX, carY+wheelOffsetY, wheelSize, wheelSize);
  ellipse(carX+wheelOffsetX, carY+wheelOffsetY, wheelSize, wheelSize);
  //antenna
  stroke(0);
  strokeWeight(5);
  line(carX-antennaOffsetX, carY-antennaOffsetY, carX-antennaOffsetX, carY-antennaLength);
  noStroke();
  //MickeyMouseDecor
  fill(208, 89, 245);
  ellipse(carX-antennaOffsetX, carY-antennaLength, headSize, headSize);
  ellipse(carX-antennaOffsetX-earOffsetX, carY-antennaLength-earOffsetY, earSize, earSize);
  ellipse(carX-antennaOffsetX+earOffsetX, carY-antennaLength-earOffsetY, earSize, earSize);
  image(img,carX-50,carY-50,95,50);
  println(mouseX + "," + mouseY);
  if (carX-75 > width){
    carX = 0;
  }
  if (run){
    carX++;
  }
}
  void mousePressed (){
    if(mouseX > width/5 && mouseX < width/5 + img.width && mouseY > 0 && mouseY < img.height);
    run = !run;
  }
  
