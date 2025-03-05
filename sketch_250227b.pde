
//higher numbers = lighter
color green1= #004b23;
color green2= #006400;
color green3= #007200;
color green4= #008000;
color green5= #38b000;
color green6= #70e000;
color green7= #9ef01a;
color green8= #ccff33;
color white= #ffffff;
color selectedColor=green1;
float sliderY=200;
float thickness=5;
PImage clueless;
boolean cluelessOn;
void setup() {
  size(1020, 999);
  background(255);
  clueless=loadImage("clueless.png");
}
void draw() {

  textSize(64);
  noStroke();
  fill(200);
  rect(0, 0, 1020, 150);
  rect(0, 150, 103, 1000);
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


  // options
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

  //slider
  fill(0);
  strokeWeight(6);
  stroke(0);
  line(50, 200, 50, 400);
  circle(50, sliderY, 40);
  
  //selected color visual
  stroke(selectedColor);
  fill(selectedColor);
  if (cluelessOn==true) {
     image(clueless, 100-thickness/2, 75-thickness/2, thickness, thickness);
  } else {
    circle(100, 75, thickness);
  }
  //stamp
  fill(255);
  cluelessTactile(0, 688, 100);
  square(0, 688, 100);
  image(clueless, 0, 688, 100, 100);
  
  cluelessTactile(0, 582, 100);
  fill(white);
  square(0, 582, 100);
  stroke(selectedColor);
}
void tactile(int x, int y, int r) {
  if (mouseX>x && mouseX<x+r && mouseY>y && mouseY<y+r) {
    stroke(255);
  } else {
    stroke(100, 100, 100);
  }
}
void cluelessTactile(int x, int y, int r) {
  if (mouseX>x && mouseX<x+r && mouseY>y && mouseY<y+r) {
    stroke(255, 0, 0);
  } else {
    stroke(100, 100, 100);
  }
}
void mouseReleased() {
  //buttons
  if (mouseX>0 && mouseX<100 && mouseY>794 && mouseY<894 ) {
    selectedColor=green1;
    cluelessOn=false;
  }
  if (mouseX>0 && mouseX<100 && mouseY>900 && mouseY<1000) {
    selectedColor=green2;
    cluelessOn=false;
  }
  if (mouseX>103 && mouseX<203 && mouseY>794 && mouseY<894) {
    selectedColor=green3;
    cluelessOn=false;
  }
  if (mouseX>103 && mouseX<203 && mouseY>900 && mouseY<1000) {
    selectedColor=green4;
    cluelessOn=false;
  }
  if (mouseX>206 && mouseX<306 && mouseY>794 && mouseY<894) {
    selectedColor=green5;
    cluelessOn=false;
  }
  if (mouseX>206 && mouseX<306 && mouseY>900 && mouseY<1000) {
    selectedColor=green6;
    cluelessOn=false;
  }
  if (mouseX>309 && mouseX<409 && mouseY>794 && mouseY<894) {
    selectedColor=green7;
    cluelessOn=false;
  }
  if (mouseX>309 && mouseX<409 && mouseY>900 && mouseY<1000) {
    selectedColor=green8;
    cluelessOn=false;
  }

  if (mouseX>0 && mouseX<100 && mouseY>582 && mouseY<682) {
    selectedColor=white;
    cluelessOn=false;
  }
  //reset
  if (mouseX>412 && mouseX<612 && mouseY>794 && mouseY<1000) {
    background(255);
  }
  //save + load
  if (mouseX>618 && mouseX<818 && mouseY>794 && mouseY<1000) {
    selectOutput("test", "saveImage");
  }
  if (mouseX>821 && mouseX<1021 && mouseY>794 && mouseY<1000) {
    selectInput("test", "loadImage");
  }

  //clueless
  if (mouseX>0 && mouseX<100 && mouseY>688 && mouseY<788) {
    cluelessOn=true;
  }

  controlSlider();
}
void mouseClicked() {
  //for clueless emoji
  if (mouseY>150 && mouseY<794 && mouseX>103) {
    if (cluelessOn==false) {
      strokeWeight(thickness);
      line(pmouseX, pmouseY, mouseX, mouseY);
    } else {
      image(clueless, mouseX-thickness/2, mouseY-thickness/2, thickness, thickness);
    }
  }
}
void mouseDragged() {
  //drawing
  if (mouseY>150 && mouseY<794 && mouseX>103) {
    if (cluelessOn==false) {
      strokeWeight(thickness);
      line(pmouseX, pmouseY, mouseX, mouseY);
    } else {
      image(clueless, mouseX-thickness/2, mouseY-thickness/2, thickness, thickness);
    }
  }
  controlSlider();
}
void controlSlider() {
  if (mouseY > 200 && mouseY < 400 && mouseX>0 && mouseX<100) {
    sliderY=mouseY;
    thickness=map(sliderY, 200, 400, 5, 150);
  }
}
void saveImage(File f) {
  if (f!=null) {
    PImage canvas = get(103, 150, width, 640);
    canvas.save(f.getAbsolutePath());
  }
}
void loadImage(File f) {
  if (f!=null) {
    int n=0;
    while (n<100) {
      PImage pic = loadImage(f.getPath());
      image(pic, 100, 150);
      n=n+1;
    }
  }
}
