boolean colisionConPersonaje(float x, float y, float w, float h,float x2, float y2, float w2, float h2) {
    boolean valor;
    if (x > x2+w2 || x+w < x2 || y > y2 +h2 || y+h < y2) {
      valor = false;
    } else {
      valor = true;
    }
    return valor;
  }
