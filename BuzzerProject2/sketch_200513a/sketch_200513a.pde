/*
  Simple WebSocketServer example that can receive voice transcripts from Chrome
  Requires WebSockets Library: https://github.com/alexandrainst/processing_websockets
 */

import websockets.*;
import processing.serial.*;
Serial myPort;
WebsocketServer socket;

void setup() {
  link("https://codepen.io/getflourish/pen/NpBGqe");
  socket = new WebsocketServer(this, 1337, "/p5websocket");
}

void draw() {
  background(0);
}

void webSocketServerEvent(String msg){
 println(msg);
 if(msg.contains("Wii")) myPort.write('1');
 else if(msg.contains("Mario")) myPort.write('2');
 else if(msg.contains("Mario")) myPort.write('3');
 else if(msg.contains("aha")) myPort.write('3');
 else if(msg.contains("game of thrones")) myPort.write('4');
 else if(msg.contains("stop")) myPort.write('5');
 else if(msg.contains("random")) myPort.write('6');
}
