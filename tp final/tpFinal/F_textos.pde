//Creacion de textos
void texto(String texto, float x, float y, float size, float xW, float yH){
  pushStyle();
  textSize(size);
  textAlign(CENTER);
  fill(255);
  text (texto,x,y,xW,yH);
  
  popStyle();
}

//Creacion de textos personalizado
void texto(String texto, float x, float y, float size, float xPos, float yPos,int inter, int align){
  pushStyle();
  textSize(size);
  textAlign(align);
  textLeading(inter);
  fill(255);
  text (texto,x,y,xPos,yPos);
  
  popStyle();
}
//----------------------------------------------------------------
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
