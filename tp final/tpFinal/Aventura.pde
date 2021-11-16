class Aventura {
  int pantalla;
  //Lista de los cuadros de texto
  String[] cuadro;
  //Lista con los creditos
  String[] creditos;
  //Lista de las imagenes de fondo
  PImage[] img;
  //Imagen del boton
  PImage boton;
  //Estado del jugador
  boolean holy= false;
  //Creo la fuente
  PFont fuente, fuenteBoton, fuenteTitulo;
  //Instancia para el juego
  Juego juego;
  //instancia para Botones
  BotonCircular b_jugar, b_reiniciar, b_creditos;
  BotonCuadrado b_siguiente, b_iglesia, b_internarlo,b_inicio,b_ayudar,b_noAyudar,b_comenzar,b_noComenzar,
                b_vaticano,b_avanzadas,b_extender,b_rezar;

  Aventura() {
    //Cargo los textos de la aventura desde un txt
    cuadro = loadStrings("data/Relato.txt");
    //Cargo los textos de los creditos desde un txt
    creditos = loadStrings("data/Creditos.txt");
    //Cargo las imagenesde la aventura
    img = new PImage[17];
    for (int i = 0; i<=16; i++) {
      img[i] = loadImage("img"+ i +".jpg");
    }
    //Imagen para el boton circular
    boton = loadImage("BotonCirculo.png");
    //Pongo las diferentes fuentes
    fuente  = createFont("Joly Death_PersonalUseOnly.ttf", 50);
    fuenteBoton= loadFont("Arial-Black-12.vlw");
    fuenteTitulo  = createFont("Melted Monster.ttf", 50);
    //Comienzo en la pantalla de titulo
    pantalla = 18;
    //Creo los botones
    b_siguiente = new BotonCuadrado("Siguiente", width-115, height-30, 30, 110, 20);
    b_iglesia = new BotonCuadrado("Llevarlo a la iglesia", width*0.75, height-50, 40, 200, 30);
    b_internarlo = new BotonCuadrado("Internarlo", 10, height-50, 40, 200, 30);
    b_jugar = new BotonCircular("Jugar", 130, height-115, 190, 50);
    b_creditos = new BotonCircular("Créditos", width-115, height-115, 190, 40);
    b_inicio = new BotonCuadrado("Volver al inicio", width/2-100, height-50, 40, 200, 30);
    b_ayudar = new BotonCuadrado("Ayudar", width*0.80, height-40, 30, 150, 25);
    b_noAyudar = new BotonCuadrado("No ayudar", 10, height-40, 30, 150, 25);
    b_comenzar = new BotonCuadrado("Comenzar", width*0.8, height-40, 30, 150, 25);
    b_noComenzar = new BotonCuadrado("No comenzar", 10, height-40, 30, 150, 25);
    b_vaticano = new BotonCuadrado("Llevarlo al Vaticano", 10, height-30, 30, 200, 20);
    b_avanzadas = new BotonCuadrado("Utilizar técnicas avanzadas", width/2-100, height-30, 30, 200, 20);
    b_extender = new BotonCuadrado("Extender las sesiones", width*0.75, height-30, 30, 200, 20);
    b_rezar = new BotonCuadrado("Rezar", width*0.80, height-40, 30, 150, 25);
    //Creo un juego
    juego = new Juego();
  }
  void draw_() {
    println("Pantalla :"+pantalla);
    background(0);
    //Fuente general
    textFont(fuente);

    //Comienzo a programar cada pantalla
    //------------------------------------------------------
    if (pantalla == 0) {
      //Muestro pantalla 0
      //Cargo imagen 0
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 45, width, 90, 36, CENTER);
      //Dibujo el botón
      b_siguiente.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 1) {
      //Muestro pantalla 1
      //Cargo imagen 1
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 45, width, 90, 36, CENTER);
      //Dibujo el botón
      b_siguiente.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 2) {
      //Muestro pantalla 2
      //Cargo imagen 2
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 40, width, 90, 36, CENTER);
      //Dibujo el botón
      b_siguiente.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 3) {
      //Muestro pantalla 3
      //Cargo imagen 3
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 45, width, 90, 36, CENTER);
      //Dibujo los botones
      b_iglesia.dibujar();
      b_internarlo.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 4) {
      //Muestro pantalla 4
      //Cargo imagen 4
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 45, width, 90);
      //Dibujo el botón
      b_siguiente.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 5) {
      //Muestro pantalla 5
      //Cargo imagen 5
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 32, width, 90, 36, CENTER);
      //Dibujo los botones
      b_siguiente.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 6) {
      //Muestro pantalla 6
      //Cargo imagen 6
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 45, width, 90, 36, CENTER);
      //Dibujo el botón
      b_siguiente.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 7) {
      //Muestro pantalla 7
      //Cargo imagen 7
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 40, width, 90, 36, CENTER);
      //Dibujo el botón
      b_ayudar.dibujar();
      b_noAyudar.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 8) {
      //Muestro pantalla 8
      //Cargo imagen
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 40, width, 90, 40, CENTER);
      //Dibujo el botón
      b_siguiente.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 9) {
      //Muestro pantalla 9
      //Cargo imagen
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 45, width, 90, 35, CENTER);
      //Dibujo el botón
      b_siguiente.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 10) {
      //Muestro pantalla 10
      //Cargo imagen
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 45, width, 90, 36, CENTER);
      //Dibujo el botón
      b_comenzar.dibujar();
      b_noComenzar.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 11) {
      //Muestro pantalla 11
      //Cargo imagen
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 40, width, 90, 35, CENTER);
      //Dibujo el botón
      b_vaticano.dibujar();
      b_avanzadas.dibujar();
      b_extender.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 12) {
      //Muestro pantalla 12
      //Cargo imagen
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 43, width, 90, 35, CENTER);
      //Dibujo el botón
      b_siguiente.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 13) {
      //Muestro pantalla 13
      //Cargo imagen
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 40, width, 90, 36, CENTER);
      //Dibujo el botón
      b_siguiente.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 14) {
      //Muestro pantalla 14
      //Cargo imagen
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 31, width, 90, 36, CENTER);
      //Dibujo el botón
      b_siguiente.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 15) {
      //Muestro pantalla 15
      //Cargo imagen
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 35, width, 90, 35, CENTER);
      //Dibujo el boton
      b_siguiente.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 16) {
      //Muestro pantalla 16
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto de creditos
      texto(creditos[0], 0, 0, 100, width, height, 40, CENTER);
      texto(creditos[1], 0, 150, 50, width, height, 40, CENTER);
      texto(creditos[2], 0, 200, 80, width, height, 40, CENTER);
      texto(creditos[3], 0, 350, 50, width, height, 40, CENTER);
      texto(creditos[4], 0, 400, 80, width, height, 40, CENTER);
      //Dibujo boton
      b_inicio.dibujar();
      //----------------------------------------------------
    } else if (pantalla == 17) {
      //Muestro pantalla 17
      //Cargo imagen
      image(img[16], 0, 0, width, height-100);
      //image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 45, width, 90, 36, CENTER);
      //Dibujo boton
      b_rezar.dibujar();
      //----------------------------------------------------
    } else if (pantalla==18) {
      //Variable Holy se resetea a false
      holy = false;
      //Muestro patanlla 18, pantalla de Tìtulo
      //Escribo el texto
      pushStyle();
      textFont (fuenteTitulo);
      texto("EL\nHUÉSPED", 10, 50, 130, width, height);
      popStyle();
      //Dibujo los Botones
      b_jugar.dibujar(-55, height-300);
      b_creditos.dibujar(500, height-300);
      //----------------------------------------------------
    } else if(pantalla==19){
      juego.draw_();
    }
  }
  void mousePressed_() {
    if (pantalla == 0) {
      //Click estando en pantalla 0
      //Boton Siguiente
      if (b_siguiente.colision()) {
        pantalla=1;
      }
    } else if (pantalla == 1) {
      //Click estando en  pantalla 1
      //Boton Siguiente
      if (b_siguiente.colision()) {
        pantalla=2;
      }
    } else if (pantalla == 2) {
      //Click estando en  pantalla 2
      //Boton Siguiente
      if (b_siguiente.colision()) {
        pantalla=3;
      }
    } else if (pantalla == 3) {
      //Click estando en  pantalla 3
      //Boton Internarlo
      if (b_internarlo.colision()) {
        pantalla=4;
      }
      //Boton Llevarlo a la iglesia
      if (b_iglesia.colision()) {
        pantalla=6;
      }
    } else if (pantalla == 4) {
      //Click estando en  pantalla 4
      //Boton Siguiente
      if (b_siguiente.colision()) {
        pantalla=5;
      }
    } else if (pantalla==5) {
      //Click estando en  pantalla 5
      //Boton Siguiente
      if (b_siguiente.colision()) {
        pantalla=16;
      }
    } else if (pantalla==6) {
      //Click estando en  pantalla 6
      //Boton Siguiente
      if (b_siguiente.colision()) {
        pantalla=7;
      }
    } else if (pantalla==7) {
      //Click estando en  pantalla 7
      //Boton No ayudar
      if (b_noAyudar.colision()) {
        pantalla=8;
      }
      //Boton Ayudar
      if (b_ayudar.colision()) {
        pantalla=10;
      }
    } else if (pantalla==8) {
      //Click estando en  pantalla 8
      //Boton Siguiente
      if (b_siguiente.colision()) {
        pantalla=9;
      }
    } else if (pantalla==9) {
      //Click estando en  pantalla 9
      //Boton Siguiente
      if (b_siguiente.colision()) {
        pantalla=16;
      }
    } else if (pantalla==16) {
      //Click estando en  pantalla 16
      if (b_inicio.colision()) {
        pantalla=18;
      }
    } else if (pantalla==10) {
      //Click estando en  pantalla 10
      //Comenzar
      if (b_comenzar.colision()) {
        pantalla=11;
      }
      //Boton No comenzar
      if (b_noComenzar.colision()) {
        pantalla=17;
      }
    } else if (pantalla==11) {
      //Click estando en  pantalla 11
      //Boton Llevarlo al Vaticano
      if (holy == true && b_vaticano.colision() ) {
        pantalla=12;
      }
      //Boton Llevarlo al Vaticano
      if (holy == false && b_vaticano.colision()) {
        pantalla=13;
      }
      //Boton Utilizar tecnicas avanzadas
      if (b_avanzadas.colision()) {
        pantalla=19;
      }
      //Extender las sesiones a 20hs
      if (b_extender.colision()) {
        pantalla=15;
      }
    } else if (pantalla == 12) {
      //Click estando en  pantalla 12
      //Boton Siguiente
      if (b_siguiente.colision()) {
        pantalla=16;
      }
    } else if (pantalla == 13) {
      //Click estando en  pantalla 13
      if (b_siguiente.colision()) {
        pantalla=16;
      }
    } else if (pantalla == 14) {
      //Click estando en  pantalla 14
      //Boton Siguiente
      if (b_siguiente.colision()) {
        pantalla=16;
      }
    } else if (pantalla == 15) {
      //Click estando en  pantalla 15
      //Boton Siguiente
      if (b_siguiente.colision()) {
        pantalla=16;
      }
    } else if (pantalla == 17) {
      //Click estando en pantalla 17
      //Boton Rezar
      if (b_rezar.colision()) {
        holy = true;
        pantalla=10;
      }
    } else if (pantalla == 18) {
      //Click estando en pantalla 18
      //Boton jugar
      if (b_jugar.colision()) {
        pantalla=0;
      }
      //Boton creditos
      if (b_creditos.colision()) {
        pantalla=16;
      }
    } else if(pantalla == 19){
      juego.mousePressed_();
    }
  }
}
