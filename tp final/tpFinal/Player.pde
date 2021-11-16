//Creo la clase del jugador
class Player {

  Ataque ataque;
  boolean atacando;

  String nombre;
  int ancho, alto;
  float posX, posY;
  PImage[] img;

  //Constructor de la clase
  Player() {
    //Creo objeto ataque
    ataque = new Ataque(posX,posY);
    atacando = false ;    
    nombre = "Sacerdote";
    //Cuadrado interno del personaje
    ancho = 50;
    alto = 70;
    //Posicion 
    posX = width/2-ancho;
    posY = height*0.75;
    //Cargo las imagenes del player
    img = new PImage[3];
    for (int i = 0; i<3; i++) {
      img[i] = loadImage("img"+ i +".png");
    }
  }
  //Metodos de la clase
  //-----------------------------------------------------------------------------------
  void draw_() {

    pushStyle();
    noFill();
    noStroke();
    rect(posX, posY, ancho, alto);   
    popStyle(); 
    //Cargo el personaje de espaldas
    if(keyPressed == false) image(img[0], posX, posY, ancho, alto); 
    if (keyPressed ==true) {
      //Boton para el ataque
      if (key == 'x' || key == 'X'){
        image(img[0], posX, posY, ancho, alto);
        atacar();
      }    
      //Movieminto de izquiera y derecha
      if (key == CODED) {
        if (keyCode== LEFT) {
          posX-=2.3;
          image(img[1], posX, posY, ancho, alto); 
          if (atacando == false)  ataque.posX = posX+25;
        } else if (keyCode == RIGHT) {
          posX+=2.3;
          image(img[2], posX, posY, ancho, alto); 
          if (atacando ==  false) ataque.posX = posX+25;
        }
      }
    }
    //Vuelve a aparecer por el lado opuesto de la pantalla cuando salgo
    if (posX > width) {
      posX=0;
    } else if (posX < 0) {
      posX = width;
    }
    //Dibuja el ataque
    if (atacando==true) {
      movimientoAtaque();
      
    }
  }
  //-----------------------------------------------------------------------------------
  void atacar() {
    atacando = true;
  }
  void movimientoAtaque() {
    if (ataque.posY > -10) {
      ataque.posY = ataque.posY-5;
      ataque.draw_();
    } else {
      ataque.posY = posY;
      ataque.posX = posX;
      atacando = false;
    }
  }
  //----------------------------------------------------------------------------------
}
