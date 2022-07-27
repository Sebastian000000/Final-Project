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
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float lineX1, lineX2, lineY;
float normalLineX1, normalLineX2, normalLineY;
float thickLineX1, thickLineX2, thickLineY;



color red=#FF033E,blue=#1203FA,black=#000000,green=#1EFA03, gray=#817F80,white=#FFFFFF, purple=#8206C1;
int T=5;
int C=black;


Boolean draw=false;
//
void setup() {
  //Display Checker
//Display Orientation Checker
//Display and Canvas checker
size(1500,900);//Landscape
background(gray);
//
//Population
drawingSurfaceX = width*0;
drawingSurfaceY = height*0;
drawingSurfaceWidth = width*34/48;
drawingSurfaceHeight = height*4/5;
//
drawingDiameter = width*1/100;
//
quitButtonX = width*3/4;
quitButtonY = height*1/30;
quitButtonWidth = width*29/128;
quitButtonHeight = height*1/10;
//
buttonX1 = width*3/4;
buttonY1 = height*5/30;
buttonWidth1 = width*29/128;
buttonHeight1 = height*1/10;
//
buttonX2 = width*3/4;
buttonY2 = height*9/30;
buttonWidth2 = width*29/128;
buttonHeight2 = height*1/10;
//
buttonX3 = width*3/4;
buttonY3 = height*13/30;
buttonWidth3 = width*29/128;
buttonHeight3 = height*1/10;
clearX = width*3/4;
clearY = height*17/30;
clearWidth = width*3/30;
clearHeight = height*4/30;
eraserX = width*28/32;
eraserY = height*17/30;
eraserWidth = width*3/30;
eraserHeight = height*4/30;
//
thinButtonX1 = width*3/4;
thinButtonY1 = height*5/30;
thinButtonWidth1 = width*29/128;
thinButtonHeight1 = height*1/10;
//
thinButtonX2 = width*3/4;
thinButtonY2 = height*9/30;
thinButtonWidth2 = width*29/128;
thinButtonHeight2 = height*1/10;
//
thinButtonX3 = width*3/4;
thinButtonY3 = height*13/30;
thinButtonWidth3 = width*29/128;
thinButtonHeight3 = height*1/10;
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
lineX1 = width*25/32;
lineX2 = width*61/64;
lineY = height*7/30;
//
normalLineX1 = width*25/32;
normalLineX2 = width*61/64;
normalLineY = height*11/30;
//
thickLineX1 = width*25/32;
thickLineX2 = width*61/64;
thickLineY = height*15/30;
//
rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
fill(red);
rect (quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight,25);
//
fill(white);
rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1,25);
strokeWeight(1);
stroke(black);
line(lineX1, lineY, lineX2, lineY);
strokeWeight(1);
//
fill(white);
rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2,25);
strokeWeight(5);
stroke(black);
line(normalLineX1,normalLineY, normalLineX2, normalLineY);
strokeWeight(1);
//
fill(white);
rect(buttonX3, buttonY3, buttonWidth3, buttonHeight3,25);
strokeWeight(20);
stroke(black);
line(thickLineX1, thickLineY, thickLineX2, thickLineY);
strokeWeight(1);

fill(white);
rect (clearX, clearY, clearWidth, clearHeight,25);
fill(white);
rect (eraserX, eraserY, eraserWidth, eraserHeight,25);
fill(white);
rect (grayX, grayY, grayWidth, grayHeight,25);
fill(white);
rect (canvasX1, canvasY1, canvasWidth1, canvasHeight1);
fill (black);
rect (canvasX2, canvasY2, canvasWidth2, canvasHeight2);
fill(purple);//finder
rect (canvasX3, canvasY3, canvasWidth3, canvasHeight3);
rect (canvasX4, canvasY4, canvasWidth4, canvasHeight4);
fill(red);
rect (redX, redY, redWidth, redHeight,15);
fill (green);
rect (greenX, greenY, greenWidth, greenHeight,15);
fill (blue);
rect (blueX, blueY, blueWidth, blueHeight,15);
fill (black);
rect (blackX, blackY, blackWidth, blackHeight,15);
noFill();

//
}

void draw() {
  //ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  strokeWeight(T);//normal
  stroke(C);
   if (draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) line (mouseX, mouseY, pmouseX, pmouseY);

//
 

}
//
void keyPressed() {

}
//
void mousePressed() {
  if (mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth-10 && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight-10) 
  if (draw==true) {
    draw=false;
  } else {
    draw = true;
    // 
  }//end of draw
  if ( mouseX>thinButtonX1   && mouseX<thinButtonX1+thinButtonWidth1 && mouseY>thinButtonY1 && mouseY<thinButtonY1+thinButtonHeight1) T=1;
 if ( mouseX>thinButtonX2   && mouseX<thinButtonX2+thinButtonWidth2 && mouseY>thinButtonY2 && mouseY<thinButtonY2+thinButtonHeight2) T=5;
 if ( mouseX>thinButtonX3   && mouseX<thinButtonX3+thinButtonWidth3 && mouseY>thinButtonY3 && mouseY<thinButtonY3+thinButtonHeight3) T=20;
 noStroke();
 fill(white);//change to canvas color!
 if (mouseX>clearX && mouseX<clearX+clearWidth && mouseY>clearY && mouseY<clearY+clearHeight ) rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
//srtoke colors
if (mouseX>redX && mouseX<redX+redWidth && mouseY>redY && mouseY<redY+redHeight) C=red;
if (mouseX>greenX && mouseX<greenX+greenWidth && mouseY>greenY && mouseY<greenY+greenHeight) C=green;
if (mouseX>blueX && mouseX<blueX+blueWidth && mouseY>blueY && mouseY<blueY+blueHeight) C=blue;
if (mouseX>blackX && mouseX<blackX+blackWidth && mouseY>blackY && mouseY<blackY+blackHeight)C=black;
//

}
//
//End MAIN Program
