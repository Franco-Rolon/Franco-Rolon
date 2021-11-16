class Juego {  

  
  //Audio
  Minim minim;
  AudioPlayer audio;

  //Creo una instancia para el escenario, el jugador y los enemigos
  Player player;
  Enemigo enemigo, enemigo2, enemigoBoss;
  Boss boss;
  Escenario escenario;
  Vida vida;
  //Variables 
  int vidas, score;
  //Pantallas
  int pantalla;
  //Creo la fuente
  PFont fuente;
  //instancia para Botones
  BotonCuadrado b_reiniciar;
  //Instacio la imagen del fondo
  PImage fondo;


  //Constructor
  Juego() { 

    //Cargo la imagen 
    fondo = loadImage("fondo.jpg");
    //Creo al personaje enemigos y escenario
    player = new Player();
    enemigo = new Enemigo();
    enemigo2 = new Enemigo();
    enemigoBoss = new Enemigo();
    boss = new Boss();
    escenario = new Escenario();
    vida = new Vida();
    //Pantalla 
    pantalla = 1;
    //Creo los Botones
     b_reiniciar = new BotonCuadrado("Volver al inicio", width/2-150, height-50, 40, 300, 30);
    //Vidas y score
    score = 0;
    vidas = 1;

    //Pongo las diferentes fuentes
    fuente  = createFont("Melted Monster.ttf", 50);
  }

  void draw_() {

    textFont(fuente);
    //---------------------------------------------------------------------------------------
    //Dibujo el  entorno, el personaje aliado y los enemigos
    if (pantalla == 1) {

      //Pongo las imagenes y dibujo los cuadros de adentro de los personajes
      image(fondo, 0, 0, width, height);
      escenario.draw_();
      player.draw_();

      vida.draw_();


      //Vida / puntuacion
      if (vidas < 3) vida.cicloVida(score);
      vida.colisionVida_Player(player);
      vida.colisionVida_Entorno(escenario);
      pushStyle();
      fill(255);
      textAlign(LEFT);
      textSize(20);
      text("Vidas: "+vidas, 10, height*0.9);
      text("Puntuación: "+score, 10, height*0.9+25);
      popStyle();

      if (score < 60) {
        enemigo.draw_();
        //Colision Ataque / Enemigo 
        enemigo.colisionEnemigo_Ataque(player);      
        //Colision Enemigo /Entorno
        enemigo.colisionEnemigo_Entorno(escenario);    
        //Colision enemigo/ jugador
        enemigo.colisionEnemigo_Player(player);
        //Dificultad aumenta aparece un enemigo extra
        if (score > 30) {
          enemigo2.draw_();
          enemigo2.colisionEnemigo_Ataque(player);
          enemigo2.colisionEnemigo_Entorno(escenario);
          enemigo2.colisionEnemigo_Player(player);
        }
      } else {
        if  (boss.vidas > 0) {
          boss.draw_();
          boss.colisionEnemigo_Ataque(player);
          enemigoBoss.tipo = 1;
          enemigoBoss.draw_();
          enemigoBoss.colisionEnemigo_Ataque(player);
          enemigoBoss.colisionEnemigo_Entorno(escenario);
          enemigoBoss.colisionEnemigo_Player(player);
        }
      }
      //Condicion para ganar
      if (boss.vidas == 0) pantalla =3;
      //Condicion para perder 
      if (vidas <= 0) pantalla = 2;
    }
    //---------------------------------------------------------------------------------------
    //Pantalla ir a menu principal luego de perder
    if (pantalla ==2) {
      pushStyle();
      fill(255);
      text("Has\nPerdido", width/2, 130);
      popStyle();
      b_reiniciar.actualizar();
    }
    //---------------------------------------------------------------------------------------
    //Pantalla ir a menu principal luego de Ganar
    if (pantalla ==3) {
      text("Has\nGanado", width/2, 130);
      b_reiniciar.actualizar();
    }
  }
  //----------------------------------------------------------------------------------------------------
  void mousePressed_() {
    if (pantalla == 2)  if (b_reiniciar.colision()) cambiarEstado(1);
    if (pantalla == 3)  if (b_reiniciar.colision()) cambiarEstado(1);
  }
  //-----------------------------------------------------------------------------------------------------
  //Sirve para cambiar entre las pantallas y reiniciar las variables cuando vuelvo al inicio
  void cambiarEstado(int p) {
    pantalla = p;
    if (p == 0) {
      vidas = 3;
      score = 0;
      vida.posY = 0-(vida.alto+10);
      vida.velocidad = 0;
      player.ataque.posX = player.posX;
      player.ataque.posY = player.posY;
      boss.vidas = 3;
      enemigo.posY = 0-random(enemigo.alto, 200);
      enemigo2.posY = 0-random(enemigo2.alto, 200);
    }
  }
}
