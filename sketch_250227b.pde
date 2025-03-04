
//higher numbers = lighter
color green1= #004b23;
color green2= #006400;
color green3= #007200;
color green4= #008000;
color green5= #38b000;
color green6= #70e000;
color green7= #9ef01a;
color green8= #ccff33;
color selectedColor=green1;
float sliderY=200;
float thickness=1;
PImage clueless;
boolean cluelessOn;
void setup(){
  size(1020, 999);
  background(255);
  clueless=loadImage("clueless.png");
}
void draw(){
  
  textSize(64);
  noStroke();
  fill(200);
  rect(0, 0, 1020, 150);
  rect(0, 150, 50, 275);
  fill(0);
  text("M A C R O S O F T P A I N T", 300, 75);
  //color choices
  strokeWeight(6);
  tactile(0, 794, 100);
  fill(green1);
  square(0, 794, 100);
  
  tactile(0, 900, 100);
  fill(green2);
  square(0, 900, 100);
  
  tactile(103, 794, 100);
  fill(green3);
  square(103, 794, 100);
  
  tactile(103, 900, 100);
  fill(green4);
  square(103, 900, 100);
  
  tactile(206, 794, 100);
  fill(green5);
  square(206, 794, 100);
  
  tactile(206, 900, 100);
  fill(green6);
  square(206, 900, 100);
  
  tactile(309, 794, 100);
  fill(green7);
  square(309, 794, 100);
  
  tactile(309, 900, 100);
  fill(green8);
  square(309, 900, 100);
  
  // optiong
  tactile(412, 794, 200);
  fill(0);
  square(412, 794, 200);
  fill(255);
  text("New", 452, 900);
  
  tactile(618, 794, 200);
  fill(0);
  square(618, 794, 200);
  fill(255);
  text("Save", 645, 900);
  
  tactile(821, 794, 200);
  fill(0);
  square(821, 794, 200);
  fill(255);
  text("Load", 845, 900);
  
  //stamp
  cluelessTactile(0, 688, 100);
  square(0, 688, 100);
  image(clueless, 0, 688, 100, 100);
 
  fill(0);
  strokeWeight(5);
  
  line(25, 200, 25, 400);
  circle(25, sliderY, 40);
  stroke(selectedColor);
  fill(selectedColor);
  if(cluelessOn==true){
    image(clueless, 50, 25, 100, 100);
  }
  else{
    circle(100, 75, thickness);
  }
}
void tactile(int x, int y, int r){
  if(mouseX>x && mouseX<x+r && mouseY>y && mouseY<y+r){
    stroke(255);
  }
  else{
    stroke(100, 100, 100);
  }
}
void cluelessTactile(int x, int y, int r){
  if(mouseX>x && mouseX<x+r && mouseY>y && mouseY<y+r){
    stroke(255,0,0);
  }
  else{
    stroke(100, 100, 100);
  }
}
void mouseReleased(){
  //buttons
  if(mouseX>0 && mouseX<100 && mouseY>794 && mouseY<894 ){
    selectedColor=green1;
    cluelessOn=false;
  }
  if(mouseX>0 && mouseX<100 && mouseY>900 && mouseY<1000){
    selectedColor=green2;
    cluelessOn=false;
  }
  if(mouseX>103 && mouseX<203 && mouseY>794 && mouseY<894){
    selectedColor=green3;
    cluelessOn=false;
  }
  if(mouseX>103 && mouseX<203 && mouseY>900 && mouseY<1000){
    selectedColor=green4;
    cluelessOn=false;
  }
  if(mouseX>206 && mouseX<306 && mouseY>794 && mouseY<894){
    selectedColor=green5;
    cluelessOn=false;
  }
  if(mouseX>206 && mouseX<306 && mouseY>900 && mouseY<1000){
    selectedColor=green6;
    cluelessOn=false;
  }
  if(mouseX>309 && mouseX<409 && mouseY>794 && mouseY<894){
    selectedColor=green7;
    cluelessOn=false;
  }
  if(mouseX>309 && mouseX<409 && mouseY>900 && mouseY<1000){
    selectedColor=green8;
    cluelessOn=false;
  }
  if(mouseX>412 && mouseX<612 && mouseY>794 && mouseY<1000){
    background(255);
  }
  if(mouseX>618 && mouseX<818 && mouseY>794 && mouseY<1000){
    selectOutput("test", "saveImage");
  }
  if(mouseX>821 && mouseX<1021 && mouseY>794 && mouseY<1000){
    selectInput("test", "loadImage");
  }
  
  //clueless
  if(mouseX>0 && mouseX<100 && mouseY>688 && mouseY<788){
    cluelessOn=true;
  }
  
  controlSlider();
}
void mouseClicked(){
  //for clueless emoji
  if(mouseY>150 && mouseY<794 && !(mouseY > 150 && mouseY < 425 && mouseX>0 && mouseX<50) && !(mouseX>0 && mouseX<100 && mouseY>688 && mouseY<788) && cluelessOn==true){
    image(clueless, mouseX, mouseY, 100, 100);
  }
}
void mouseDragged(){
  //drawing
  if(mouseY>150 && mouseY<794 && !(mouseY > 150 && mouseY < 425 && mouseX>0 && mouseX<50) && !(mouseX>0 && mouseX<100 && mouseY>688 && mouseY<788)){
    if(cluelessOn==false){
      strokeWeight(thickness);
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
    else{
      image(clueless, mouseX, mouseY, 100, 100);
    }
  }
  controlSlider();
}
void controlSlider(){
  if(mouseY > 200 && mouseY < 400 && mouseX>0 && mouseX<50){
    sliderY=mouseY;
    thickness=map(sliderY, 200, 400, 0, 150);
  }
}
void saveImage(File f){
  if(f!=null){
    PImage canvas = get(0, 150, width, 640);
    canvas.save(f.getAbsolutePath());
  }
}
void loadImage(File f){
  if(f!=null){
    int n=0;
    while(n<100){
      PImage pic = loadImage(f.getPath());
      image(pic, 0, 150);
      n=n+1;
    }
  }
}
