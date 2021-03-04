//CLASE DE LA BOMBA (inspirado en Mk. 82 bomb)

class Bomba{
  //variables propias de bomba
  boolean activa = true;
  boolean disparada = false;
  int x, y;

  //constructor de parametros
  public Bomba (int x, int y) {
    this.x = x;
    this.y = y;
  }

  void aparecer() {

    //mientras no haya un hit se dibuja
    if (activa == true) {
      noStroke();
      fill(204, 170, 0);
      rect(x, y+5, pixel*3, pixel);
      rect(x, y+15, pixel*3, pixel);

      fill(64, 77, 0);
      rect(x+5, y, pixel, pixel);
      rect(x, y+10, pixel*3, pixel);
      rect(x, y+20, pixel*3, pixel);
      rect(x+5, y+25, pixel, pixel);
      rect(x, y+30, pixel*3, pixel);
      rect(x, y+35, pixel, pixel);
      rect(x+10, y+35, pixel, pixel);
    }
  }

  void volar() {

    //mientras no haya un hit se mueve
    if (activa == true) {
      y = y - 3;
    }
  }

  
  //funcion de colision
  void boom() {
    //desactivar el misil
    activa = false;
  }
}
