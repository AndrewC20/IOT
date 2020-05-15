import controlP5.*;

import processing.serial.*;

Serial myPort;
ControlP5 cp5;

PFont font;

void setup()
{
  size(300, 400);
  printArray(Serial.list());
  
  myPort = new Serial(this, "COM5", 9600);
  cp5 = new ControlP5(this);
  font = createFont("calibri light", 20);
  cp5.addButton("Wii").setPosition(50, 40).setSize(80, 50).setFont(font);
  cp5.addButton("Mario").setPosition(170, 40).setSize(80, 50).setFont(font);
  cp5.addButton("AHA").setPosition(50, 140).setSize(80, 50).setFont(font);
  cp5.addButton("got").setPosition(170, 140).setSize(80, 50).setFont(font);
  cp5.addButton("Stop").setPosition(170, 240).setSize(100, 70).setFont(font);
  cp5.addButton("Random").setPosition(30, 240).setSize(100, 70).setFont(font);
}

void draw()
{
  background(150, 0, 150);
  fill(0, 255, 0);
  text("SONGS", 130, 30);
  text("CONTROLS", 121, 225);
  
}

void Wii()
{
  myPort.write('1');
}

void Mario()
{
  myPort.write('2');
}

void AHA()
{
  myPort.write('3');
}
void got()
{
  myPort.write('4');
}
  
void Stop()
{
  myPort.write('5');
}

void Random()
{
  myPort.write('6');
}
