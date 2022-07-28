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
float quitTextX,quitTextY;
float thinTextX,thinTextY;
float normalTextX,normalTextY;
float thickTextX,thickTextY;
float eraseTextX, eraseTextY;
float clearTextX, clearTextY;
float bTextX, bTextY;
float imageX1, imageY1, imageWidth1, imageHeight1;
float imageX2, imageY2, imageWidth2, imageHeight2;
float imageX3, imageY3, imageWidth3, imageHeight3;
float circleX1, circleY1, circleDiameter;
float circleX2, circleY2;
float circleX3, circleY3;
float circleX4, circleY4;
float circleX5, circleY5;
float squareX1, squareY1, squareWidth1, squareHeight1;
float squareX2, squareY2, squareWidth2, squareHeight2;
float squareX3, squareY3, squareWidth3, squareHeight3;
float squareX4, squareY4, squareWidth4, squareHeight4;
float squareX5, squareY5, squareWidth5, squareHeight5;
float loopX, loopY, loopWidth, loopHeight;
float dateX, dateY;
float AudioX, AudioY;
float muteX, muteY, muteDiameter;
PImage img1;
PImage img2;
PImage img3;
color red=#FF033E,blue=#1203FA,black=#000000,green=#1EFA03, gray=#817F80,white=#FFFFFF, purple=#8206C1;
color darkRed=#BC0404, lightGreen=#00B936, lightBlue=#0006A0, lightBlack=#52525A, imageOutline=#00FFCE;
color hoverover=#E8E8E8, hoveroverRed, hoveroverGreen, hoveroverBlue, hoveroverBlack; 
color buttonFill,buttonFill2,buttonFill3, buttonFill4, buttonFill5, buttonFill6, buttonFill7;
color buttonFill8, buttonFill9, buttonFill10, buttonFill11, buttonFill12, buttonFill13, buttonFill14;
color buttonFill15, buttonFill16, buttonFill17, buttonFill18, buttonFill19, buttonFill20;
int T=5;
int C=black;
int BG=white;
int cOld;
Boolean draw=false;
Boolean drawCanvas=false;
Boolean drawCanvas3=false;
Boolean drawCanvas4=false;
String myDate="";
//
Minim minim;
AudioPlayer song1;//creates playlist
AudioMetaData songMetaData1;
//
void setup() {
  //Audio
  minim = new Minim(this);
  song1 = minim.loadFile("Music/Around_The_Corner_-_Infraction.mp3");
  songMetaData1 = song1.getMetaData();
  //
  //Date stamp
  myDate = nf(year(), 4)+"/"
    +nf(month(), 2)+"/"
    +nf(day(), 2); 
  //orientation checker
 //
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
canvasY1 = height*51/60;
canvasWidth1 = width*3/30;
canvasHeight1 = height*4/30;
//
canvasX2 = width*4/30;
canvasY2 = height*51/60;
canvasWidth2 = width*3/30;
canvasHeight2 = height*4/30;
//
canvasX3 = width*8/30;
canvasY3 = height*51/60;
canvasWidth3 = width*3/30;
canvasHeight3 = height*4/30;
//
canvasX4 = width*12/30;
canvasY4 = height*51/60;
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
quitTextX = width*53/64;
quitTextY = height*3/30;
//
thinTextX = width*53/64;
thinTextY = height*13/60;
//
normalTextX = width*53/64;
normalTextY = height*21/60;
//
thickTextX = width*53/64;
thickTextY = height*29/60;
//
eraseTextX = width*115/128;
eraseTextY = height*77/120;
//
clearTextX = width*100/128;
clearTextY = height*77/120;
//
bTextX = width*1/8;
bTextY = height*67/80;
//
imageX1 = (width*8/30)*1.012;
imageY1 = (height*51/60)*1.005;
imageWidth1 = (width*3/30)*0.95;
imageHeight1 = (height*4/30)*0.95;
//
imageX2 = (width*12/30)*1.0085;
imageY2 = (height*51/60)*1.005;
imageWidth2 = (width*3/30)*0.95;
imageHeight2 = (height*4/30)*0.95;
//
imageX3 = (width*92/128);
imageY3 = (height*92/120);
imageWidth3 = (width*8/30);
imageHeight3 = (height*9/120);
//
dateX = width*8/10;
dateY = height*39/40;
//
circleX1 = width*379/512;
circleY1 = height*386/480;
circleDiameter = width*10/240;
//
circleX2 = width*401/512;
circleY2 = height*386/480;
//
circleX3 = width*423/512;
circleY3 = height*386/480;
//
circleX4 = width*445/512;
circleY4 = height*386/480;
//
circleX5 = width*468/512;
circleY5 = height*386/480;
//
loopX = width*481/512;
loopY = height*92/120;
loopWidth = width*22/480;
loopHeight = height*18/240;
//
squareX1=width*92/128;
squareY1=height*92/120;
squareWidth1=width*10/240;
squareHeight1=height*18/240;
//
squareX2=width*195/256;
squareY2=height*92/120;
squareWidth2=width*10/240;
squareHeight2=height*18/240;
//
squareX3=width*206/256;
squareY3=height*92/120;
squareWidth3=width*10/240;
squareHeight3=height*18/240;
//
squareX4=width*434/512;
squareY4=height*92/120;
squareWidth4=width*41/960;
squareHeight4=height*18/240;
//
squareX5=width*457/512;
squareY5=height*92/120;
squareWidth5=width*22/480;
squareHeight5=height*18/240;
//
AudioX = width*8/10;
AudioY = height*36/40;
//
muteX = width*471/512;
muteY = height*425/480;
muteDiameter = width*5/240;
//
println (width, height, displayWidth, displayHeight);
  int appWidth = width;
  int appHeight = height;
  if ( width > displayWidth || height > displayHeight ) { //CANVAS in Display Checker
    //CANVAS Too Big
    appWidth = displayWidth;
    appHeight = displayHeight;
    println("CANVAS needed to be readjusted to fit on your monitor.");
  } else {
    println("CANVAS is Good to go on your display.");
  }//End CANVAS in Display Checker
  //Display Orientation
  String ls="Landscape or Square", p="portraint", DO="Display Orientation:", instruct="Dont be that guy, turn your phone";
  String orientation = ( appWidth>=appHeight ) ? ls : p; //Ternary Operator, repeats the IF-Else structure to populate a variable
  println( DO, orientation );
  if ( orientation==ls ) { //Test for chosen display orientation
    println("Good to Go");
  } else {
    appWidth *= 0; //asignment operator, works like appWidth=appWidth*0
    appHeight *= 0;
    println(instruct);
  }
//
fill(BG);
rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
//
fill(white);
rect (grayX, grayY, grayWidth, grayHeight,25);
//
//fill(red);
//noStroke();
//circle(muteX, muteY, muteDiameter);
//
fill(black);
textSize(40);
text("Background Options", bTextX, bTextY);
//
fill(black);
textSize(50);
text("Audio:", AudioX, AudioY);
//
img1 = loadImage("Images/Mandala.jpg");
img2 = loadImage("Images/Minions.jpg");
img3 = loadImage("Images/Player Buttons.png");
}

void draw() {
  //Audio
  if (song1.isLooping() && song1.loopCount()!=-1) println("there are", song1.loopCount(), "loops left");
  if (song1.isLooping() && song1.loopCount()==-1) println("Looping infintely");
  if (song1.isPlaying() && !song1.isLooping()) println("Play Once");
  println("Song Position", song1.position(), "Song Length", song1.length());
  //
//if (mouseX>canvasX2 && mouseX<canvasX2+canvasWidth2 && mouseY>canvasY2 && mouseY<canvasY2+canvasHeight2) rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  
  fill(black);
  textSize(40);
  text(myDate, dateX,dateY );
  //
  if (drawCanvas==true) {
  fill(BG);
  noStroke();
rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
 fill(white);
 drawCanvas=false;
  }
  //
    if (drawCanvas3==true) {
  noStroke();
image( img1,drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
 drawCanvas3=false;
  }
  //
    if (drawCanvas4==true) {
  noStroke();
image( img2,drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
 drawCanvas4=false;
  }
  //
  strokeWeight(T);//normal
  stroke(C);
  if (draw == true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    line (mouseX, mouseY, pmouseX, pmouseY);
  }
//
if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    buttonFill = green;
  } else {
    buttonFill = red;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightMode adds choice
  strokeWeight(1);
  stroke(black);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight,25);
  fill(black);
textSize(50);
text("Quit", quitTextX, quitTextY);
//
 if ( mouseX>thinButtonX1 && mouseX<thinButtonX1+thinButtonWidth1 && mouseY>thinButtonY1 && mouseY<thinButtonY1+thinButtonHeight1 ) {
    buttonFill2 = hoverover;
  } else {
    buttonFill2 = white;
  }
fill(buttonFill2);
strokeWeight(1);
stroke(black);
rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1,25);
fill(black);
textSize(35);
text("Thin", thinTextX, thinTextY);
strokeWeight(1);
stroke(black);
line(lineX1, lineY, lineX2, lineY);
strokeWeight(1);
//
if ( mouseX>thinButtonX2 && mouseX<thinButtonX2+thinButtonWidth2 && mouseY>thinButtonY2 && mouseY<thinButtonY2+thinButtonHeight2 ) {
    buttonFill3 = hoverover;
  } else {
    buttonFill3 = white;
  }
fill(buttonFill3);
rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2,25);
fill(black);
textSize(35);
text("Normal", normalTextX, normalTextY);
strokeWeight(5);
stroke(black);
line(normalLineX1,normalLineY, normalLineX2, normalLineY);
strokeWeight(1);
//
if ( mouseX>thinButtonX3 && mouseX<thinButtonX3+thinButtonWidth3 && mouseY>thinButtonY3 && mouseY<thinButtonY3+thinButtonHeight3 ) {
    buttonFill4 = hoverover;
  } else {
    buttonFill4 = white;
  }
fill(buttonFill4);
rect(buttonX3, buttonY3, buttonWidth3, buttonHeight3,25);
fill(black);
textSize(35);
text("Thick", thickTextX, thickTextY);
strokeWeight(20);
stroke(black);
line(thickLineX1, thickLineY, thickLineX2, thickLineY);
strokeWeight(1);
//
if ( mouseX>clearX && mouseX<clearX+clearWidth && mouseY>clearY && mouseY<clearY+clearHeight ) {
    buttonFill5 = hoverover;
  } else {
    buttonFill5 = white;
  }
fill(buttonFill5);
rect (clearX, clearY, clearWidth, clearHeight,25);
fill(black);
textSize(25);
text("Clear", clearTextX, clearTextY);
//
if ( mouseX>eraserX && mouseX<eraserX+eraserWidth && mouseY>eraserY && mouseY<eraserY+eraserHeight ) {
    buttonFill6 = hoverover;
  } else {
    buttonFill6 = white;
  }
fill(buttonFill6);
rect (eraserX, eraserY, eraserWidth, eraserHeight,25);
fill (black);
textSize(25);
text("Eraser", eraseTextX, eraseTextY);
//
if ( mouseX>redX && mouseX<redX+redWidth && mouseY>redY && mouseY<redY+redHeight ) {
    buttonFill7 = darkRed;
  } else {
    buttonFill7 = red;
  }
fill(buttonFill7);
rect (redX, redY, redWidth, redHeight,15);
//
if ( mouseX>greenX && mouseX<greenX+greenWidth && mouseY>greenY && mouseY<greenY+greenHeight ) {
    buttonFill8 = lightGreen;
  } else {
    buttonFill8 = green;
  }
fill (buttonFill8);
rect (greenX, greenY, greenWidth, greenHeight,15);
//
if ( mouseX>blueX && mouseX<blueX+blueWidth && mouseY>blueY && mouseY<blueY+blueHeight ) {
    buttonFill9 = lightBlue;
  } else {
    buttonFill9 = blue;
  }
fill (buttonFill9);
rect (blueX, blueY, blueWidth, blueHeight,15);
//
if ( mouseX>blackX && mouseX<blackX+blackWidth && mouseY>blackY && mouseY<blackY+blackHeight ) {
    buttonFill10 = lightBlack;
  } else {
    buttonFill10 = black;
  }
fill (buttonFill10);
rect (blackX, blackY, blackWidth, blackHeight,15);
//
if ( mouseX>canvasX1 && mouseX<canvasX1+canvasWidth1 && mouseY>canvasY1 && mouseY<canvasY1+canvasHeight1 ) {
    buttonFill11 = hoverover;
  } else {
    buttonFill11 = white;
  }
fill (buttonFill11);
rect (canvasX1, canvasY1, canvasWidth1, canvasHeight1);
//
if ( mouseX>canvasX2 && mouseX<canvasX2+canvasWidth2 && mouseY>canvasY2 && mouseY<canvasY2+canvasHeight2 ) {
    buttonFill12 = lightBlack;
  } else {
    buttonFill12 = black;
  }
fill (buttonFill12);
rect (canvasX2, canvasY2, canvasWidth2, canvasHeight2);
//
if ( mouseX>canvasX3 && mouseX<canvasX3+canvasWidth3 && mouseY>canvasY3 && mouseY<canvasY3+canvasHeight3 ) {
    buttonFill13 = imageOutline;
  } else {
    buttonFill13 = gray;
  }
noFill();//finder
stroke(buttonFill13);
rect (canvasX3, canvasY3, canvasWidth3, canvasHeight3);
 image(img1, imageX1, imageY1, imageWidth1, imageHeight1);
//
if ( mouseX>canvasX4 && mouseX<canvasX4+canvasWidth4 && mouseY>canvasY4 && mouseY<canvasY4+canvasHeight4 ) {
    buttonFill14 = imageOutline;
  } else {
    buttonFill14 = gray;
  }
noFill();//finder
stroke(buttonFill14);
rect (canvasX4, canvasY4, canvasWidth4, canvasHeight4);
image(img2, imageX2, imageY2, imageWidth2, imageHeight2);
//
if ( mouseX>squareX1 && mouseX<squareX1+squareWidth1 && mouseY>squareY1 && mouseY<squareY1+squareHeight1 ) {
    buttonFill15 = imageOutline;
  } else {
    buttonFill15 = blue;
  }
image(img3, imageX3, imageY3, imageWidth3, imageHeight3);
noFill();//finder
stroke(buttonFill15);
strokeWeight(4);
circle (circleX1, circleY1, circleDiameter);
//noFill();
//stroke(green);
//rect(squareX1, squareY1, squareWidth1,squareHeight1);
//
if ( mouseX>squareX2 && mouseX<squareX2+squareWidth2 && mouseY>squareY2 && mouseY<squareY2+squareHeight2 ) {
    buttonFill16 = imageOutline;
  } else {
    buttonFill16 = blue;
  }
noFill();//finder
stroke(buttonFill16);
strokeWeight(4);
circle (circleX2, circleY2, circleDiameter);
//noFill();
//stroke(green);
//rect(squareX2, squareY2, squareWidth2,squareHeight2);
//
if ( mouseX>squareX3 && mouseX<squareX3+squareWidth3 && mouseY>squareY3 && mouseY<squareY3+squareHeight3 ) {
    buttonFill17 = imageOutline;
  } else {
    buttonFill17 = blue;
  }
noFill();//finder
stroke(buttonFill17);
strokeWeight(4);
circle (circleX3, circleY3, circleDiameter);
//noFill();
//stroke(green);
//rect(squareX3, squareY3, squareWidth3,squareHeight3);
//
if ( mouseX>squareX4 && mouseX<squareX4+squareWidth4 && mouseY>squareY4 && mouseY<squareY4+squareHeight4 ) {
    buttonFill18 = imageOutline;
  } else {
    buttonFill18 = blue;
  }
noFill();//finder
stroke(buttonFill18);
strokeWeight(4);
circle (circleX4, circleY4, circleDiameter);
//noFill();
//stroke(green);
//rect(squareX4, squareY4, squareWidth4,squareHeight4);
//
if ( mouseX>squareX5 && mouseX<squareX5+squareWidth5 && mouseY>squareY5 && mouseY<squareY5+squareHeight5 ) {
    buttonFill19 = imageOutline;
  } else {
    buttonFill19 = blue;
  }
noFill();//finder
stroke(buttonFill19);
strokeWeight(4);
circle (circleX5, circleY5, circleDiameter);
//noFill();
//stroke(green);
//rect(squareX5, squareY5, squareWidth5,squareHeight5);
//
if ( mouseX>loopX && mouseX<loopX+loopWidth && mouseY>loopY && mouseY<loopY+loopHeight ) {
    buttonFill20 = imageOutline;
  } else {
    buttonFill20 = blue;
  }
noFill();//finder
stroke(buttonFill20);
strokeWeight(4);
rect(loopX, loopY, loopWidth,loopHeight);
//
}
//
void keyPressed() {

}
//
void mousePressed() {
  //
  //
  if (mouseX>loopX && mouseX<loopX+loopWidth && mouseY>loopY && mouseY<loopY+loopHeight ) song1.loop();
  if (mouseX>squareX5 && mouseX<squareX5+squareWidth5 && mouseY>squareY5 && mouseY<squareY5+squareHeight5) {
    if (song1.isMuted()) {
      fill(green);
      noStroke();
      circle(muteX, muteY, muteDiameter);
      song1.unmute();
    } else {
      song1.mute();
      fill(red);
      noStroke();
      circle(muteX, muteY, muteDiameter);
    }
  }//End Mute Button
  if (mouseX>squareX3 && mouseX<squareX3+squareWidth3 && mouseY>squareY3 && mouseY<squareY3+squareHeight3 ) song1.skip(10000);//skip forward 1 second or 1000 milliseconds
  if (mouseX>squareX4 && mouseX<squareX4+squareWidth4 && mouseY>squareY4 && mouseY<squareY4+squareHeight4 ) song1.skip(-10000);
  if (mouseX>squareX1 && mouseX<squareX1+squareWidth1 && mouseY>squareY1 && mouseY<squareY1+squareHeight1 ) {
    if (song1.isPlaying()) {
      song1.pause();
      song1.rewind();
      fill(gray);
      noStroke();
      circle(muteX, muteY, muteDiameter*1.05);
    } else {
      song1.rewind();
    }
  }// end stop
  if ( mouseX>squareX2 && mouseX<squareX2+squareWidth2 && mouseY>squareY2 && mouseY<squareY2+squareHeight2 ) {
    if (song1.isPlaying() ) {
      song1.pause();
    } else if (song1.position() >= song1.length()-song1.length()*9/10) {
      song1.rewind();
      song1.play ();
    } else {
      song1.play();
      fill(green);
      noStroke();
      circle(muteX, muteY, muteDiameter);
    }
  }
  
  
  
  
  //
  if (mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth-10 && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight-10) 
  if (draw==true) {
    draw=false;
  } else {
    draw = true;
    // 
  }//end of draw
  //eraser
  if (mouseX>eraserX && mouseX<eraserX+eraserWidth && mouseY>eraserY && mouseY<eraserY+eraserHeight) {
    cOld=C;
    C=BG;
    T=30;
  }
  //
  if ( mouseX>thinButtonX1   && mouseX<thinButtonX1+thinButtonWidth1 && mouseY>thinButtonY1 && mouseY<thinButtonY1+thinButtonHeight1) {
    T=1;
    C=cOld;
  }
 if ( mouseX>thinButtonX2   && mouseX<thinButtonX2+thinButtonWidth2 && mouseY>thinButtonY2 && mouseY<thinButtonY2+thinButtonHeight2) {
   T=5;
   C=cOld;
 }
 if ( mouseX>thinButtonX3   && mouseX<thinButtonX3+thinButtonWidth3 && mouseY>thinButtonY3 && mouseY<thinButtonY3+thinButtonHeight3) {
   T=20;
   C=cOld;
 }
 if (mouseX>clearX && mouseX<clearX+clearWidth && mouseY>clearY && mouseY<clearY+clearHeight) {
   BG=white;
   drawCanvas=true;
  
 }
//stroke colors
if (mouseX>redX && mouseX<redX+redWidth && mouseY>redY && mouseY<redY+redHeight) C=red;
if (mouseX>greenX && mouseX<greenX+greenWidth && mouseY>greenY && mouseY<greenY+greenHeight) C=green;
if (mouseX>blueX && mouseX<blueX+blueWidth && mouseY>blueY && mouseY<blueY+blueHeight) C=blue;
if (mouseX>blackX && mouseX<blackX+blackWidth && mouseY>blackY && mouseY<blackY+blackHeight)C=black;
//Canvas color
if (mouseX>canvasX1 && mouseX<canvasX1+canvasWidth1 && mouseY>canvasY1 && mouseY<canvasY1+canvasHeight1) {
  BG=white;
  drawCanvas=true;
}
if (mouseX>canvasX2 && mouseX<canvasX2+canvasWidth2 && mouseY>canvasY2 && mouseY<canvasY2+canvasHeight2) {
  BG=black;
  drawCanvas=true;
}
if (mouseX>canvasX3 && mouseX<canvasX3+canvasWidth3 && mouseY>canvasY3 && mouseY<canvasY3+canvasHeight3) {
  
  drawCanvas3=true;
}
if (mouseX>canvasX4 && mouseX<canvasX4+canvasWidth4 && mouseY>canvasY4 && mouseY<canvasY4+canvasHeight4) {
  
  drawCanvas4=true;
}
//
//quit button
if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
//

}
//
//End MAIN Program
