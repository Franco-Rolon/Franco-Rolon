class Escenario{
  float posX, posY;
  float ancho,alto;
  
  
  Escenario(){
  
    posX = 0;
    posY = (height*0.82) ;
    ancho = width;
    alto = 120;
  }
  
  void draw_(){
    pushStyle();
    noFill();
    rect(posX,posY,ancho,alto);
    popStyle();
  
  }
}
