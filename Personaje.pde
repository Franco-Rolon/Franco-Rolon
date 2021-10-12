class Personaje {
  String nombre, estado;
  int vida, ataque, defensa, lvl, armadura;

  Personaje(String nombre, int vida, int ataque, int defensa) {
    this.nombre = nombre;
    this.vida = vida;
    this.ataque = ataque;
    this.defensa = defensa;
    this.armadura = 0;
    lvl = 1;
    this.estado = "vivo";
  }
  int atacar(int def) {
    int damageAtaque = ataque; 
    if (damageAtaque<def) {
      damageAtaque = def;
    }
    return damageAtaque-def;
  }
  int defender(int atq) {
    int damageDefensa = defensa;
    return atq - damageDefensa;
  }
  void batalla(Personaje a, Personaje e, int accionA, int accionE,int dmgA, int dmgE,int defA,int defE) {
    if (accionA > 0 && accionE > 0 && pantalla == 1 ) {
      if (accionA == 1 && accionE==1) {
        a.vida = a.vida - dmgE;
        e.vida = e.vida - dmgA;
        mensajeDeAccion("Ambos van a recibir daño a su vida", 440);
      } else if (accionA == 1 && accionE==2) {
        int res = dmgA - defE;
        if (res<0) res = 0;
        e.vida = e.vida - res;
        mensajeDeAccion("Vas a  reazlizar "+res+" de daño a la vida del enemigo ", 440);
      } else if (accionA == 2 && accionE==1) {
        int res = dmgE - defA;
        if (res<0) res = 0;
        a.vida = a.vida - res;
        mensajeDeAccion("El ememigo va a realizar "+res+" de daño a tu vida ", 440);
      } else if (accionA == 2 && accionE==2) {
        mensajeDeAccion("Ninguno recibira  daño a su vida", 440);
      }
    }
  }

  void dibujarPersonaje(int xText, int yText, PImage img,int xImg, int yImg) {
    if (vida <= 0) {
      estado = "Muerto";
    }
    image(img,xImg,yImg,120,120);
    fill(0);
    textSize(12);
    text("Vida: " +vida,xText,yText);
    //text(nombre+"\nVida: " +vida+"\nNivel: "+lvl+"\nAtaque: "+ataque+"\nDefensa: "+defensa, xText, yText);
  }
}
