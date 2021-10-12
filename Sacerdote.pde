class Sacerdote extends Personaje{
  int ataqueSagrado;  
  
  Sacerdote(String nombre, int vida, int ataque, int defensa){
    super(nombre,vida,ataque,defensa);
    ataqueSagrado = ataqueSagrado+ataque; 
  }/*
  int atacarSagrado(){
    int damageAtaque = super.atacar()+ataqueSagrado;
    return damageAtaque;
  }
  
  int defender(){
    int damageDefensa = super.defensa;
    return damageDefensa;
  }*/
  
  

}
