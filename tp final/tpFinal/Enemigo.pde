class Enemigo {

  String nombre;
  int ancho, alto;
  float posX, posY;
  float velocidad;
  PImage img,img2;
  int tipo ;

  Enemigo() {
    nombre = "Gosth";
    //Cuadrado interno del Enemigo
    ancho = 70;
    alto = 70;    
    //Posicion 
    posX = random(10, width-ancho);
    posY = 0-alto;
    velocidad=1.6;
    img = loadImage("enemigo.png");
    img2 = loadImage("enemigo2.png");
    tipo = 0;
  }
  //-----------------------------------------------------------------------------------
  void draw_() {

    pushStyle();
    noFill();
    noStroke();
    if(tipo == 0){
      image(img, posX, posY, ancho, alto); 
    }else if(tipo == 1 ){
      velocidad = 3;
      image(img2, posX, posY, ancho, alto); 
    }
    rect(posX, posY, ancho, alto);
    posY = posY + velocidad;
    popStyle();
  }
  //----------------------------------------------------------------------------------
  
  //Colisiones
  void colisionEnemigo_Player(Player player) {
    if (colisionConPersonaje(posX, posY, ancho, alto, player.posX, player.posY, player.ancho, player.alto)==true) {
      aventura.juego.vidas--;
      posY = 0-random(alto,200);
      posX = random(10, width-ancho);
    }
  }
  void colisionEnemigo_Entorno(Escenario escenario) {
    if (colisionConPersonaje(posX, posY, ancho, alto, escenario.posX, escenario.posY, escenario.ancho, escenario.alto)==true) {     
      aventura.juego.vidas--;
      posY = 0-random(alto,200);
      posX = random(10, width-ancho);
    }
  }
  void colisionEnemigo_Ataque(Player player) {
    if (colisionConPersonaje(posX, posY, ancho, alto, player.ataque.posX, player.ataque.posY, player.ataque.ancho, player.ataque.alto)==true ) {
      aventura.juego.score +=10;
      fill(0);
      posY = 0-random(alto,200);
      posX = random(0, width-ancho);
      player.ataque.posY = player.posY+10;
      player.atacando =false;
    }
  }
}
