//CLASE DEL MISIL (inspirado en AIM9 - sidewinder)

class Misil{
  //variables propia de misil
  int s = 5;
  boolean activo = true;
  boolean disparado = false;
  int posX, posY;

  //constructor de parametros
  public Misil (int x, int y) {
    posX = x;
    posY = y;
  }

  //mostrar el misil en pantalla
  void aparecer() {

    //mientras no haya un hit se dibuja
    if (activo == true) {
      noStroke();
      fill(70, 128, 80);
      rect(posX+5, posY, pixel, pixel*3);
      rect(posX, posY+10, pixel*3, pixel);
      
      fill(200);
      rect(posX+5, posY+15, pixel, pixel*3);
      rect(posX, posY+25, pixel*3, pixel);
      rect(posX, posY+30, pixel*3, pixel);
      
      fill(255,217,25);
      rect(posX+5, posY+30, pixel, pixel);
      
      fill(255, 128, 80);
      rect(posX+5, posY+35, pixel, pixel);
    }
  }

  //acttualizar el misil
  void volar() {

    //mientras no haya un hit se mueve
    if (activo == true) {
      posY = posY - s;
    }
  }

  
  //funcion de colision
  void boom() {
    //desactivar el misil
    activo = false;
  }
}
