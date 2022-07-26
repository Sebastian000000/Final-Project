import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float buttonX3, buttonY3, buttonWidth3, buttonHeight3;
float clearX, clearY, clearWidth, clearHeight;
float eraserX, eraserY, eraserWidth, eraserHeight;
float thinButtonX1, thinButtonY1, thinButtonWidth1, thinButtonHeight1;
float thinButtonX2, thinButtonY2, thinButtonWidth2, thinButtonHeight2;
float thinButtonX3, thinButtonY3, thinButtonWidth3, thinButtonHeight3;
color red=#FF033E,blue=#1203FA,black=#000000,green=#1EFA03;
int T=5;


Boolean draw=false;
//
void setup() {
  //Display Checker
//Display Orientation Checker
//Display and Canvas checker
size(1500,900);//Landscape
background(black);
//
//Population
drawingSurfaceX = width*0;
drawingSurfaceY = height*0;
drawingSurfaceWidth = width*11/16;
drawingSurfaceHeight = height*4/5;
drawingDiameter = width*1/100;
buttonX1 = width*3/4;
buttonY1 = height*2/30;
buttonWidth1 = width*29/128;
buttonHeight1 = height*1/5;
buttonX2 = width*3/4;
buttonY2 = height*9/30;
buttonWidth2 = width*29/128;
buttonHeight2 = height*1/5;
buttonX3 = width*3/4;
buttonY3 = height*16/30;
buttonWidth3 = width*29/128;
buttonHeight3 = height*1/5;
clearX = width*3/4;
clearY = height*23/30;
clearWidth = width*3/30;
clearHeight = height*4/30;
eraserX = width*28/32;
eraserY = height*23/30;
eraserWidth = width*3/30;
eraserHeight = height*4/30;
thinButtonX1 = width*3/4;
thinButtonY1 = height*2/30;
thinButtonWidth1 = width*1/4;
thinButtonHeight1 = height*1/5;
thinButtonX2 = width*3/4;
thinButtonY2 = height*9/30;
thinButtonWidth2 = width*1/4;
thinButtonHeight2 = height*1/5;
thinButtonX3 = width*3/4;
thinButtonY3 = height*16/30;
thinButtonWidth3 = width*1/4;
thinButtonHeight3 = height*1/5;

//
rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
rect(buttonX3, buttonY3, buttonWidth3, buttonHeight3);
rect (clearX, clearY, clearWidth, clearHeight);
rect (eraserX, eraserY, eraserWidth, eraserHeight);
//
}

void draw() {
  //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  strokeWeight(T);//normal
   if (draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) line (mouseX, mouseY, pmouseX, pmouseY);
//
 if ( mouseX>thinButtonX1   && mouseX<thinButtonX1+thinButtonWidth1 && mouseY>thinButtonY1 && mouseY<thinButtonY1+thinButtonHeight1) T=1;
 if ( mouseX>thinButtonX2   && mouseX<thinButtonX2+thinButtonWidth2 && mouseY>thinButtonY2 && mouseY<thinButtonY2+thinButtonHeight2) T=5;
 if ( mouseX>thinButtonX3   && mouseX<thinButtonX3+thinButtonWidth3 && mouseY>thinButtonY3 && mouseY<thinButtonY3+thinButtonHeight3) T=20;
 if (mouseX>clearX && mouseX<clearX+clearWidth && mouseY>clearY && mouseY<clearY+clearHeight ) rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter);

}
//
void keyPressed() {

}
//
void mousePressed() {
  if (mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) 
  if (draw==true) {
    draw=false;
  } else {
    draw = true;
    //
    
  }//end of draw
}
//
//End MAIN Program
