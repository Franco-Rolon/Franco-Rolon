class BotonCuadrado {
  float x, y, alto, ancho;
  int c,tam;
  String label;

  BotonCuadrado(String label, float x, float y, float alto, float ancho, int tam) {
    this.x = x;
    this.y = y;
    this.alto = alto;
    this.ancho = ancho;
    this.label = label;
    this.tam = tam;
  }
  void actualizar() {
    dibujar();
  }
  void dibujar() {
    pushMatrix();
    pushStyle();

    translate(x, y);
    if (colision()) {
      fill(38,38,38);
    } else {
      fill(0);
    }
    rect(0, 0, ancho, alto,12);
    pushStyle();
    fill(255);   
    textSize(tam);
    textAlign(CENTER);
    text(label, 0, 0+(ancho*0.05),ancho,alto);
    popStyle();
    pushStyle();
    popMatrix();
  }
  boolean colision() {
    boolean valor;
    if (mouseX>x && mouseY>y && mouseX<x+ancho && mouseY<y+alto) {
      valor = true;
    } else {
      valor = false;
    }
    return valor;
  }
}
