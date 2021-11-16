class Vida {

  int alto, ancho;
  float posX, posY;
  float velocidad;
  PImage img;
  Vida() {
    //Cuadrado interno de la vida
    ancho = 20;
    alto = 20;    
    //Posicion 
    posX = random(10, width-ancho);
    posY = 0-(alto+10);
    velocidad=0;
    img = loadImage("vida.png");
  }
  //-----------------------------------------------------------------------------------
  void draw_() {
    pushStyle();
    //rectMode(CENTER);
    noFill();
    noStroke();
    rect(posX, posY, ancho, alto); 
    posY = posY + velocidad;
    image(img, posX, posY, ancho, alto);
    popStyle();
  }
  //En que momentos cae una vida
  void cicloVida(int score) {
    if (score%30 == 0 && score > 0) {
      velocidad = 1.5;
    }
  }

  //Colisiones
  void colisionVida_Player(Player player) {
    if (colisionConPersonaje(posX, posY, ancho, alto, player.posX, player.posY, player.ancho, player.alto)==true) {
      //juego.vidas++;
      posY = 0-alto;
      posX = random(10, width-ancho);
      velocidad = 0;
    }
  }
  void colisionVida_Entorno(Escenario escenario) {
    if (colisionConPersonaje(posX, posY, ancho, alto, escenario.posX, escenario.posY, escenario.ancho, escenario.alto)==true) {     
      posY = 0-alto;
      posX = random(10, width-ancho);
      velocidad = 0;
    }
  }
}
