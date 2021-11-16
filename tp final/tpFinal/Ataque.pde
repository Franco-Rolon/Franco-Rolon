class Ataque {

  int alto, ancho;
  float posX, posY;
  PImage img;
  

  Ataque(float posX,float posY) {
    //Cuadrado interno del ataque
    ancho = 20;
    alto = 30;    
    //Posicion 
    this.posX = posX;
    this.posY = posY;
    img = loadImage("poder.png");
  }
  //-----------------------------------------------------------------------------------
  void draw_() {
    pushStyle();
    noFill();
    noStroke();
    rect(posX, posY, ancho, alto);
    image(img, posX, posY, ancho, alto); 
    popStyle();
  }

}
