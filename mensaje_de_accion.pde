//Funcion para crear los textos de las acciones
void mensajeDeAccion(String mensaje, int y){
  pushStyle();
  textSize(11);
  textAlign(CENTER);
  fill(0);
  text (mensaje,20,y,width,height);
  
  popStyle();

}
