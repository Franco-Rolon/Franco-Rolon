//Cracion cuadro de texto
void cuadroTexto(){
  pushStyle();
  pushMatrix();
  
  translate(0, 500);
  fill(0);
  rect(0,0,width,100);
  
  popMatrix();
  popStyle();
  
}
//Cracion cuadro de texto personalizado
void cuadroTexto(float x, float y, float ancho,float alto){
  pushStyle();
  pushMatrix();
  
  translate(x, y);
  fill(100);
  rect(0,0,ancho,alto);
  
  popMatrix();
  popStyle();
  
}
