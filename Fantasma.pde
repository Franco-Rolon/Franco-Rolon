class Fantasma extends Personaje{
  float bonusEsquivar = random(0,100);
  
  Fantasma(String nombre, int vida, int ataque, int defensa){
    super(nombre,vida,ataque,defensa); 
  }
  /*
  int atacar(){
    int damageAtaque = super.atacar();
    return damageAtaque;
  }
 */
   
  int defender(){
    int damageDefensa = super.defensa;
    return damageDefensa;
  }
  
  int defenderFantasma(int atq){
    if(bonusEsquivar>50){
      atq = 0;
    }
    return atq;
  }
  

}
