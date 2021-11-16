class BotonCircular {
  float x, y, diam,size;
  int tam;
  String label;
  PFont fuenteBoton;
  PImage boton_circulo;

  BotonCircular(String label, float x, float y, float diam,int tam) {
    this.x = x;
    this.y = y;
    this.diam = diam;
    this.label = label;
    this.tam = tam;
    fuenteBoton= loadFont("Arial-Black-12.vlw");
    boton_circulo = loadImage("BotonCirculo.png");
  }

  void dibujar(float x1,float y1) {
    //Imagen de los botones
    image(boton_circulo,x1, y1, 350, 350);
    
    pushMatrix();
    pushStyle();

    translate(x, y);
    if (colision()) {
      fill(38, 38, 38);
    } else {
      fill(0);
    }
    ellipse(0, 0, diam, diam);
    fill(255);
    textAlign(CENTER);
    textFont(fuenteBoton);
    textSize(tam);
    text(label, 0, 0+(diam*0.05), diam);

    pushStyle();
    popMatrix();
  }
  boolean colision() {
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
