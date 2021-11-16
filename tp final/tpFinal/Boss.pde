class Boss {

  String nombre;
  int ancho, alto;
  float posX, posY;
  float velocidad;
  PImage img;
  int vidas;
  
  Boss() {
    nombre = "Demon";
    //Cuadrado interno del Enemigo
    ancho = width-350;
    alto = 200;    
    //Posicion 
    posX = random(10, width-ancho);
    posY = 0-alto;
    velocidad=2;
    img = loadImage("boss.png");
    vidas = 3;
  }
  //-----------------------------------------------------------------------------------
  void draw_() {
    pushStyle();
    noFill();
    noStroke();
    image(img, posX, posY, ancho, alto); 
    rect(posX, posY, ancho, alto);
    if(posY < 0 ) posY = posY + velocidad;
    popStyle();
  }
  //----------------------------------------------------------------------------------
  
  //Colisiones
  void colisionEnemigo_Ataque(Player player) {
    if (colisionConPersonaje(posX, posY, ancho, alto, player.ataque.posX, player.ataque.posY, player.ataque.ancho, player.ataque.alto)==true ) {
      //juego.score +=10;
      posY = 0-random(alto,200);
      posX = random(0, width-ancho);
      player.ataque.posY = player.posY+10;
      player.atacando =false;
      vidas--;
    }
  }
}
