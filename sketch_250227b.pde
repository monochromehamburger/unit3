
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
void setup(){
  size(1000, 1000);
  background(255);
}
void draw(){
  textSize(64);
  noStroke();
  fill(200);
  rect(0, 0, 1000, 150);
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
  
  tactile(412, 794, 200);
  fill(0);
  square(412, 794, 203);
  fill(255);
  text("New", 452, 900);
  
  tactile(615, 794, 200);
  fill(0);
  square(615, 794, 203);
  fill(255);
  text("Save", 645, 900);
  
  stroke(selectedColor);
  fill(selectedColor);
  circle(100, 75, 100);
}
void tactile(int x, int y, int r){
  if(mouseX>x && mouseX<x+r && mouseY>y && mouseY<y+r){
    stroke(255);
  }
  else{
    stroke(100, 100, 100);
  }
}
void mouseReleased(){
  if(mouseX>0 && mouseX<100 && mouseY>794 && mouseY<894 ){
    selectedColor=green1;
  }
  if(mouseX>0 && mouseX<100 && mouseY>900 && mouseY<1000){
    selectedColor=green2;
  }
  if(mouseX>103 && mouseX<203 && mouseY>794 && mouseY<894){
    selectedColor=green3;
  }
  if(mouseX>103 && mouseX<203 && mouseY>900 && mouseY<1000){
    selectedColor=green4;
  }
  if(mouseX>206 && mouseX<306 && mouseY>794 && mouseY<894){
    selectedColor=green5;
  }
  if(mouseX>206 && mouseX<306 && mouseY>900 && mouseY<1000){
    selectedColor=green6;
  }
  if(mouseX>309 && mouseX<409 && mouseY>794 && mouseY<894){
    selectedColor=green7;
  }
  if(mouseX>309 && mouseX<409 && mouseY>900 && mouseY<1000){
    selectedColor=green8;
  }
  if(mouseX>412 && mouseX<612 && mouseY>794 && mouseY<1000){
    background(255);
  }
  if(mouseX>615 && mouseX<815 && mouseY>794 && mouseY<1000){
    selectOutput("test", "saveImage");
  }
}
void mouseDragged(){
  if(mouseY>150 && mouseY<794){
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}
void saveImage(File f){
  if(f!=null){
    PImage canvas = get(0, 150, width, 640);
    canvas.save(f.getAbsolutePath());
  }
}
