class Juego {
  int pantalla;
  //Lista de los cuadros de texto
  String[] cuadro;
  //Lista con los creditos
  String[] creditos;
  //Lista de las imagenes de fondo
  PImage[] img;
  PImage boton;
  //Estado del jugador
  boolean holy= false;
  //Creo la fuente
  PFont fuente, fuenteBoton;
  //instancia para Botones
  BotonCircular b_jugar;
  BotonCuadrado b_reiniciar;
  BotonCuadrado b_siguiente;

  Juego() {
    //Cargo los textos de la aventura desde un txt
    cuadro = loadStrings("data/Relato.txt");
    //Cargo los textos de los creditos desde un txt
    creditos = loadStrings("data/Creditos.txt");
    //Cargo las imagenes
    img = new PImage[17];
    for (int i = 0; i<=16; i++) {
      img[i] = loadImage("img"+ i +".jpg");
    }
    boton = loadImage("BotonCirculo.png");
    //Pongo las diferentes fuentes
    //fuente  = createFont("Joly Death_PersonalUseOnly.ttf", 50);
    //fuenteBoton= loadFont("Arial-Black-12.vlw");
    pantalla = 18;
    b_siguiente = new BotonCuadrado("Siguiente",width-80,80,100,100,color(255,0,0),50);
  }
  void draw_() {
    //Comienzo a programar cada pantalla

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
    } else if (pantalla == 3) {
      //Muestro pantalla 3
      //Cargo imagen 3
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 45, width, 90, 36, CENTER);
      //Dibujo los botones
      //dibujaBotonCuadrado("Llevarlo a la iglesia", width-150, height-30, 150, 30);
      //dibujaBotonCuadrado("Internarlo", 0, height-30, 80, 30);
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
    } else if (pantalla == 7) {
      //Muestro pantalla 7
      //Cargo imagen 7
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 40, width, 90, 36, CENTER);
      //Dibujo el botón
      //dibujaBotonCuadrado("Ayudar", width-70, height-30, 70, 30);
      //dibujaBotonCuadrado("No ayudar", 0, height-30, 90, 30);
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
    } else if (pantalla == 10) {
      //Muestro pantalla 10
      //Cargo imagen
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 45, width, 90, 36, CENTER);
      //Dibujo el botón
      //dibujaBotonCuadrado("No Comenzar", 0, height-30, 110, 40);
      //dibujaBotonCuadrado("Comenzar", width-80, height-30, 80, 30);
    } else if (pantalla == 11) {
      //Muestro pantalla 11
      //Cargo imagen
      image(img[pantalla], 0, 0, width, height-100);
      //Dibujo el cuadro de texto
      cuadroTexto();
      //Escribo el texto
      texto(cuadro[pantalla], 0, 500, 40, width, 90, 35, CENTER);
      //Dibujo el botón
      //dibujaBotonCuadrado("Llevarlo al Vaticano", 0, height-30, 150, 40);
      //dibujaBotonCuadrado("Utilizar técnicas avanzadas", width-440, height-30, 205, 40);
      //dibujaBotonCuadrado("Extender las sesiones a 20hs", width-220, height-30, 220, 40);
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
      //dibujaBotonCuadrado("Volver al inicio", width-120, height-30, 120, 30);
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
      //dibujaBotonCuadrado("Rezar", width-80, height-30, 80, 30);
    } else if (pantalla==18) {
      //Variable Holy se resetea a false
      holy = false;
      //Muestro patanlla 18, pantalla de Tìtulo
      //Escribo el texto
      texto(cuadro[pantalla], 0, 0, 177, width, height, 200, CENTER);
      //Imagen de los botones
      image(boton, -40, height-190, 220, 220);
      image(boton, width-190, height-190, 220, 220);
      //Dibujo los Botones
      //dibujaBotonCircular("Creditos", 75, height-75, 120);
      //dibujaBotonCircular("Inicio", width-70, height-75, 120);
    }
  }
  void mousePressed_() {
    if (pantalla == 0) {
    //Click estando en pantalla 0
    //Boton Siguiente
    /*if (colisionSupCuadrado(mouseX, mouseY, width-80, height-30, 80, 30 )) {
      pantalla=1;
    }*/
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
    /*if (colisionSupCuadrado(mouseX, mouseY, 0, height-30, 80, 30 )) {
      pantalla=4;
    }*/
    //Boton Llevarlo a la iglesia
    /*if (colisionSupCuadrado(mouseX, mouseY, width-150, height-30, 150, 30 )) {
      pantalla=6;
    }*/
  } else if (pantalla == 4) {
    //Click estando en  pantalla 4
    //Boton Siguiente
    if (false) {
      pantalla=5;
    }
  } else if (pantalla==5) {
    //Click estando en  pantalla 5
    //Boton Siguiente
    if (false) {
      pantalla=16;
    }
  } else if (pantalla==6) {
    //Click estando en  pantalla 6
    //Boton Siguiente
    if (false) {
      pantalla=7;
    }
  } else if (pantalla==7) {
    //Click estando en  pantalla 7
    //Boton No ayudar
    if (false) {
      pantalla=8;
    }
    //Boton Ayudar
    if (false) {
      pantalla=10;
    }
  } else if (pantalla==8) {
    //Click estando en  pantalla 8
    //Boton Siguiente
    if (false) {
      pantalla=9;
    }
  } else if (pantalla==9) {
    //Click estando en  pantalla 9
    //Boton Siguiente
    if (false) {
      pantalla=16;
    }
  } else if (pantalla==16) {
    //Click estando en  pantalla 16
    if (false) {
      pantalla=18;
    }
  } else if (pantalla==10) {
    //Click estando en  pantalla 10
    //Comenzar
    if (false) {
      pantalla=11;
    }
    //Boton No comenzar
    if (false) {
      pantalla=17;
    }
  } else if (pantalla==11) {
    //Click estando en  pantalla 11
    //Boton Llevarlo al Vaticano
    if (holy == true && false ) {
      pantalla=12;
    }
    //Boton Llevarlo al Vaticano
    if (holy == false && false) {
      pantalla=13;
    }
    //Boton Utilizar tecnicas avanzadas
    if (false){
      pantalla=14;
    }
    //Extender las sesiones a 20hs
    if (false) {
      pantalla=15;
    }
  } else if (pantalla == 12) {
    //Click estando en  pantalla 12
    //Boton Siguiente
    if (false) {
      pantalla=16;
    }
  } else if (pantalla == 13) {
    //Click estando en  pantalla 13
    if (false) {
      pantalla=16;
    }
  } else if (pantalla == 14) {
    //Click estando en  pantalla 14
    //Boton Siguiente
    if (false) {
      pantalla=16;
    }
  } else if (pantalla == 15) {
    //Click estando en  pantalla 15
    //Boton Siguiente
    if (false) {
      pantalla=16;
    }
  } else if (pantalla == 17) {
    //Click estando en pantalla 17
    //Boton Rezar
    if (false) {
      holy = true;
      pantalla=10;
    }
  } else if (pantalla == 18) {
    //Click estando en pantalla 17
    //Boton Inicio
    if (false) {
      pantalla=16;
    }
    //Boton Creditos
    if (false) {
      pantalla=0;
    }
  }
  }
}
