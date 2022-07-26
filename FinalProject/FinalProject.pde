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
float canvasX1, canvasY1, canvasWidth1, canvasHeight1;
float canvasX2, canvasY2, canvasWidth2, canvasHeight2;
float canvasX3, canvasY3, canvasWidth3, canvasHeight3;//image 1
float canvasX4, canvasY4, canvasWidth4, canvasHeight4;//image 2
float redX, redY, redWidth, redHeight;
float greenX, greenY, greenWidth, greenHeight;
float blueX, blueY, blueWidth, blueHeight;
float blackX, blackY, blackWidth, blackHeight;
float grayX, grayY, grayWidth, grayHeight;
color red=#FF033E,blue=#1203FA,black=#000000,green=#1EFA03, gray=#817F80;
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
drawingSurfaceWidth = width*34/48;
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
canvasX1 = width*0;
canvasY1 = height*25/30;
canvasWidth1 = width*3/30;
canvasHeight1 = height*4/30;
//
canvasX2 = width*4/30;
canvasY2 = height*25/30;
canvasWidth2 = width*3/30;
canvasHeight2 = height*4/30;
//
canvasX3 = width*8/30;
canvasY3 = height*25/30;
canvasWidth3 = width*3/30;
canvasHeight3 = height*4/30;
//
canvasX4 = width*12/30;
canvasY4 = height*25/30;
canvasWidth4 = width*3/30;
canvasHeight4 = height*4/30;
//
redX = width*16/30;
redY = height*25/30;
redWidth = width*5/120;
redHeight = height*4/30;
greenX = width*69/120;
greenY = height*25/30;
greenWidth = width*5/120;
greenHeight = height*4/30;
blueX = width*74/120;
blueY = height*25/30;
blueWidth = width*5/120;
blueHeight = height*4/30;
blackX = width*79/120;
blackY = height*25/30;
blackWidth = width*5/120;
blackHeight = height*4/30;
grayX = width*63/120;
grayY = height*98/120;
grayWidth = width*22/120;
grayHeight = height*5/30;

//
rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
rect(buttonX3, buttonY3, buttonWidth3, buttonHeight3);
rect (clearX, clearY, clearWidth, clearHeight);
rect (eraserX, eraserY, eraserWidth, eraserHeight);
 rect (grayX, grayY, grayWidth, grayHeight);
rect (canvasX1, canvasY1, canvasWidth1, canvasHeight1);
rect (canvasX2, canvasY2, canvasWidth2, canvasHeight2);
rect (canvasX3, canvasY3, canvasWidth3, canvasHeight3);
rect (canvasX4, canvasY4, canvasWidth4, canvasHeight4);
fill(red);
rect (redX, redY, redWidth, redHeight);
fill (green);
rect (greenX, greenY, greenWidth, greenHeight);
fill (blue);
rect (blueX, blueY, blueWidth, blueHeight);
fill (black);
rect (blackX, blackY, blackWidth, blackHeight);
noFill();
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
