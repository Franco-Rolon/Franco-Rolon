//TP Final
//Franco Rolón
//Link video de YouTube:
Aventura aventura;

//Bilbioteca de audio
import ddf.minim.*;
//
Minim minim;
AudioPlayer audio;

void setup() {
  size(800, 600);
  //Cargo el audio
  minim=new Minim(this);
  //audio = minim.loadFile("piano.mp3");
  //audio.loop();
  aventura = new Aventura();
}

void draw() {
  aventura.draw_();
 
}

void mousePressed() {
  aventura.mousePressed_();
}
