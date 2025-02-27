
color test= #F4CADE;
color test2= #C0FFEE;
color test3= #239694;
color test4= #6A9586;
color test5= #BC31D9;
color selectedColor;
void setup(){
  size(1000, 1000);
  background(test);
}
void draw(){
  strokeWeight(6);
 
  tactile(0, 794, 100);
  fill(test2);
  square(0, 794, 100);
  
  tactile(0, 900, 100);
  fill(test3);
  square(0, 900, 100);
  
  tactile(103, 794, 100);
  fill(test4);
  square(103, 794, 100);
  
  tactile(103, 900, 100);
  fill(test5);
  square(103, 900, 100);
  
  stroke(selectedColor);
  fill(selectedColor);
  circle(150, 150, 200);
  circle(mouseX, mouseY, 10);
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
    selectedColor=test2;
  }
  if(mouseX>0 && mouseX<100 && mouseY>900 && mouseY<1000){
    selectedColor=test3;
  }
  if(mouseX>103 && mouseX<203 && mouseY>794 && mouseY<894){
    selectedColor=test4;
  }
  if(mouseX>103 && mouseX<203 && mouseY>900 && mouseY<1000){
    selectedColor=test5;
  }
}
void mouseDragged(){
  
  line(pmouseX, pmouseY, mouseX, mouseY);
}
