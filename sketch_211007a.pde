//Creo un objeto Sacerdote
Sacerdote priest = new Sacerdote("Priest", 30, 10, 10);
//Creo un objeto fantasma
Fantasma gosth = new Fantasma("Fantasma", 60, 5, 5);
//Creo un objeto menu
Menu main = new Menu();
//Instancias separadas en pantallas
int pantalla = 0;
//Turnos
boolean turno = false;
//Dependiendo el numero el personaje realizara una accion diferente
int accionAliado = 0;
int accionEnemigo = 0;
//Accion random para el enemigo
float r;
//Variables para guardar el daño y defensa 
int damageAliado, damageEnemigo, defensaAliado, defensaEnemigo;
//variable para el resultado de la pelea
int resultado;
//Array con los personajes
PImage[] img;

void setup() { 
  size(500, 500);
  //Cargo las imagenes de los prsonajes
  img = new PImage[2];
  for (int i = 0; i<img.length; i++) {
    img[i] = loadImage("img"+ i +".png");
  }
} 

void draw() {
  background(250);

  //Variables de prueba
  /*
  text("pantalla: "+pantalla, 15, 250);
  text("vida priest: "+priest.vida, 15, 270);
  text("vida gosth: "+gosth.vida, 15, 290);
  text("turno: "+turno, 15, 310);
  */
  //-----------------------------------------------------------------------------------
  //Menu principal
  if (pantalla==0) main.dibujarMenu();
  //-----------------------------------------------------------------------------------
  //Boton para terminar turno 
   if(pantalla == 1 && turno == true) dibujaBotonCuadrado("Terminar\n turno", 400, height-150, 80, 30,12);
  //----------------------------------------------------------------------------------- 
  // El combate dura mientras los dos tengan mas de 0 de vida
  if (priest.vida > 0 && gosth.vida > 0 && pantalla ==1) {
    //Dibujo boton para Atacar y defender
    if(accionAliado == 0){
      dibujaBotonCuadrado("Atacar", 200, height-150, 80, 30);
      dibujaBotonCuadrado("Defender", 200, height-200, 80, 30);     
    }

    //Dibujo los personajes en pantalla.
    priest.dibujarPersonaje(10, 150,img[0],20,20);
    gosth.dibujarPersonaje(400, 150,img[1],350,20);
  }
  //----------------------------------------------------------------------------------- 
  //Muestro en pantalla los mensajes de mis acciones
  if (accionAliado == 1) mensajeDeAccion("Has realizado un ataque de: "+ damageAliado, 400);
  if (accionAliado == 2) mensajeDeAccion("Haces una defensa de: "+ defensaAliado, 400);  
  //----------------------------------------------------------------------------------- 
  //Verifico de forma aleatoria que accion realiza el enemigo
  //Muestro en pantalla los mensajes de las acciones del rival
  if (pantalla == 1 && accionAliado > 0) {
    accionEnemigo = int(r = random(1, 3));
    if (accionEnemigo == 1) {
      damageEnemigo = gosth.ataque;
      mensajeDeAccion("El enemigo realiza un ataque de: "+ damageEnemigo, 420);
    } else if (accionEnemigo == 2 && accionAliado > 0) {    
      defensaEnemigo = gosth.defensa;
       mensajeDeAccion("El enemigo hace una defensa de: "+ defensaEnemigo, 420);
    }
  }
  //----------------------------------------------------------------------------------- 
  //Realizo los calculos y Muestro en pantalla el resultado de la pelea
  priest.batalla(priest,gosth,accionAliado,accionEnemigo,damageAliado,damageEnemigo,defensaAliado,defensaEnemigo);

  //----------------------------------------------------------------------------------- 
  //Verifico si gane o perdi
  pushStyle();
  
  textSize(40);
  if (priest.vida <= 0 && turno == false ) text("Perdiste",width/2,50);   
  if(gosth.vida <= 0 && turno == false) text("Ganaste",width/2-40,50);    
  
  popStyle();
  //----------------------------------------------------------------------------------- 
  //Termino el turno y reseteo variables
  if(turno) noLoop();  accionAliado = 0; accionEnemigo = 0; damageAliado=0; damageEnemigo=0; defensaEnemigo=0; defensaAliado=0; turno = false;
}

void mousePressed() {
  //----------------------------------------------------------------------------------- 
  //Verifico que presiono sobre el boton Jugar en el menu
  if (colisionSupCuadrado(mouseX, mouseY, 120, height/6, 250, 100) && pantalla == 0) {     
    pantalla++;
  }
  //----------------------------------------------------------------------------------- 
  //Verifico que se presiono el boton atacar o defender en el menu del jugador  
  if (colisionSupCuadrado(mouseX, mouseY, 200, height-150, 80, 30) && turno ==false){
    accionAliado = 1;
    damageAliado = priest.ataque;
    turno = true;   
  } else if (colisionSupCuadrado(mouseX, mouseY, 200, height-200, 80, 30) && turno ==false ) {
    accionAliado = 2;
    defensaAliado = priest.defensa;
    turno = true;
  }
  //----------------------------------------------------------------------------------- 
  //Verifico que se presiono el boton terminar turno  
  if (colisionSupCuadrado(mouseX, mouseY, 400, height-150, 80, 30) ) {     
     loop(); 
  }
}
