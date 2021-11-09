class BotonCircular {
  float x, y, diam;
  int c, tam;
  String label;
  PFont fuenteBoton;
  PImage boton_circulo;

  BotonCircular(String label, float x, float y, float diam, color c) {
    this.x = x;
    this.y = y;
    this.diam = diam;
    this.label = label;
    this.c = c;
    fuenteBoton= loadFont("Arial-Black-12.vlw");
    boton_circulo = loadImage("BotonCirculo.png");
  }
  void actualizar() {
    dibujar();
  }
  void dibujar() {
    
    //Imagen de los botones
    image(boton_circulo, -55, height-300, 350, 350);
    
    pushMatrix();
    pushStyle();

    translate(x, y);
    if (colisionSupCircular()) {
      fill(38, 38, 38);
    } else {
      fill(0);
    }
    ellipse(0, 0, diam, diam);
    fill(c);
    textAlign(CENTER);
    textFont(fuenteBoton);
    textSize(50);
    text(label, 0, 0+(diam*0.05), diam);

    pushStyle();
    popMatrix();
  }
  boolean colisionSupCircular() {
    float distancia = dist(mouseX, mouseY, x, y);
    boolean valor;
    if (distancia < diam) {
      valor = true;
    } else {
      valor = false;
    }
    return valor;
  }
}
