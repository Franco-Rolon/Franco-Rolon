//Cracion boton cuadrado  mediante una Funcion
void dibujaBotonCuadrado(String label,float x,float y, float ancho, float alto){
  pushStyle();
  pushMatrix();
  
  translate(x,y);
  fill(0);
  rect(0,0,ancho,alto);
  fill(255);
  textAlign(CENTER);
  textSize(18);
  text(label,40,20);
  
  popMatrix();
  popStyle();
  
}
//Funcion con sobrecarga para añadir el tamaño de la letra
void dibujaBotonCuadrado(String label,float x,float y, float ancho, float alto, int size){
  pushStyle();
  pushMatrix();
  
  translate(x,y);
  fill(0);
  rect(0,0,ancho,alto);
  fill(255);
  textAlign(CENTER);
  textSize(size);
  text(label,size+30,size);
  
  popMatrix();
  popStyle();
  
}

//Funcion que verifica la Colision con boton cuadrado
boolean colisionSupCuadrado(float x, float y, float xSup, float ySup, float ancho,float alto){
  boolean valor;

  if(x>xSup && y>ySup && x<xSup+ancho && y<ySup+alto){
    valor = true;
  }
  else{
    valor = false;
  }

  return valor;

}
