//TP Final
//Franco Rolón
//Link video de YouTube:
Juego juego;

//Bilbioteca de audio
import ddf.minim.*;
//
Minim minim;
AudioPlayer audio;

void setup() {
  size(600, 600);
  //Cargo el audio
  minim=new Minim(this);
  //audio = minim.loadFile("piano.mp3");
  //audio.loop();
  juego = new Juego();
}

void draw() {
  juego.draw_();
 
}

void mousePressed() {
  juego.mousePressed_();
}
