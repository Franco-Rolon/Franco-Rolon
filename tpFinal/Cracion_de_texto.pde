//Creacion de textos
void texto(String texto, float x, float y, float size, float xPos, float yPos){
  pushStyle();
  //Cargo la fuente
  //textFont(fuente);
  textSize(size);
  textAlign(CENTER);
  fill(255);
  text (texto,x,y,xPos,yPos);
  
  popStyle();
}

//Creacion de textos personalizado
void texto(String texto, float x, float y, float size, float xPos, float yPos,int inter, int align){
  pushStyle();
  //Cargo la fuente
  //textFont(fuente);
  textSize(size);
  textAlign(align);
  textLeading(inter);
  fill(255);
  text (texto,x,y,xPos,yPos);
  
  popStyle();
}
