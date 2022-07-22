import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
//
void setup() {
  //Display Checker
//Display Orientation Checker
//Display and Canvas checker
size(1500,900);//Landscape
//
//POpulation
drawingSurfaceX = width*0;
drawingSurfaceY = height*0;
drawingSurfaceWidth = width*3/4;
drawingSurfaceHeight = height*4/5;
drawingDiameter = width*1/100;
//
rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
//
}

void draw() {
  ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
}
//
void keyPressed() {
}
//
void mousePressed() {
}
//
//End MAIN Program
