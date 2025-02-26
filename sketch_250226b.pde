
color selectedColor;
float sliderY;
color test= #F4CADE;
color test2= #C0FFEE;
color test3= #239694;
color test4= #6A9586;
float shade;
void setup(){
  size(1000, 1000);
  sliderY=200;
  stroke(test3);
  fill(test2);
}
void draw(){
  background(shade, shade, 255);
  strokeWeight(5);
 
  line(500, 200, 500, 800);
  circle(500, sliderY, 100);
  
}

void mouseDragged(){
  controlSlider();
}
void mouseReleased(){
  controlSlider();
}
void controlSlider(){
  if(mouseY > 200 && mouseY < 800 && mouseX>400 && mouseX<600){
    sliderY=mouseY;
    shade=map(sliderY, 100, 700, 0, 255);
  }
}
