
color test= #F4CADE;
color test2= #C0FFEE;
color test3= #239694;
color test4= #6A9586;
color selectedColor;
void setup(){
  size(1000, 1000);
}
void draw(){
  background(test);
  strokeWeight(5);
 
  tactile(200, 800, 100);
  fill(test2);
  circle(200, 800, 200);
  
  tactile(500, 800, 100);
  fill(test3);
  circle(500, 800, 200);
  
  tactile(800, 800, 100);
  fill(test4);
  circle(800, 800, 200);
  stroke(selectedColor);
  fill(selectedColor);
  square(250, 100, 500);
}
void tactile(int x, int y, int r){
  if(dist(x, y, mouseX, mouseY)<r){
    stroke(255);
  }
  else{
    stroke(100, 100, 100);
  }
}
void mouseReleased(){
  if(dist(200, 800, mouseX, mouseY)<100){
    selectedColor=test2;
  }
  if(dist(500, 800, mouseX, mouseY)<100){
    selectedColor=test3;
  }
  if(dist(800, 800, mouseX, mouseY)<100){
    selectedColor=test4;
  }
}
