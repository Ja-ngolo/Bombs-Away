//CLASE DEL ENEMIGO (avion inspirado en el Mig-29)

class Enemigo{

  //declarar variable de velocidad
  int v, x, y;
  boolean quitarVida = true;
  boolean estaVivo = true;


  //constructor de propiedades de Enemigo
  public Enemigo(int x, int y, int v) {
    //definir velocidad
    this.v = v;
    this.x = x;
    this.y = y;
  }

  //funcion que muestra el avion enemigo
  void aparecer() {
    if (estaVivo == true) {
      //placeholder rectangle
      noStroke();
      //forma del avion
      fill(85, 107, 47);//verde oliva oscuro
      rect(x+15, y+5, pixel*4, pixel);
      rect(x+65, y+5, pixel*4, pixel);
      rect(x+20, y+10, pixel*5, pixel);
      rect(x+55, y+10, pixel*5, pixel);
      rect(x+25, y+15, pixel*10, pixel);
      rect(x+30, y+20, pixel*8, pixel);
      rect(x+5, y+25, pixel*4, pixel);
      rect(x+75, y+25, pixel*4, pixel);
      rect(x+35, y+25, pixel*6, pixel);
      rect(x+5, y+30, pixel*18, pixel);
      rect(x+10, y+35, pixel*16, pixel);
      rect(x+15, y+40, pixel*14, pixel);
      rect(x+20, y+45, pixel*12, pixel);
      rect(x+25, y+50, pixel*10, pixel);
      rect(x+30, y+55, pixel*8, pixel*2);
      rect(x+35, y+65, pixel*6, pixel);
      rect(x+40, y+70, pixel*4, pixel*2);
      rect(x+45, y+80, pixel*2, pixel*4);
      //detalles
      fill(150);
      rect(x+35, y+10, pixel, pixel*6);
      rect(x+60, y+10, pixel, pixel*6);
      rect(x+45, y+15, pixel*2, pixel*2);
      rect(x+40, y+30, pixel, pixel);
      rect(x+55, y+30, pixel, pixel);
      rect(x+45, y+35, pixel*2, pixel);
      rect(x+40, y+45, pixel, pixel*2);
      rect(x+55, y+45, pixel, pixel*2);
      rect(x+35, y+60, pixel, pixel*2);
      rect(x+60, y+60, pixel, pixel*2);
      rect(x+40, y+70, pixel*4, pixel*2);
      rect(x+45, y+85, pixel*2, pixel*3);

      fill(50);
      rect(x+15, y+5, pixel*4, pixel);
      rect(x+65, y+5, pixel*4, pixel);
      rect(x+40, y+10, pixel, pixel*4);
      rect(x+55, y+10, pixel, pixel*4);
      rect(x+5, y+25, pixel*4, pixel);
      rect(x+75, y+25, pixel*4, pixel);
      rect(x+20, y+30, pixel*3, pixel);
      rect(x+65, y+30, pixel*3, pixel);
      rect(x+40, y+55, pixel, pixel*2);
      rect(x+55, y+55, pixel, pixel*2);

      fill(175, 238, 238);//turquesa claro
      rect(x+45, y+70, pixel*2, pixel*3);
    }
  }

  //funcion que actualiza cada cuadro
  void actualizar() {
    y += v;

    //condicional para que vuelva a aparecer en pantalla
    if (y > height) {
      //suficiente espacio para que los aviones no se sobrelapen
      y = -grid * 7;
      quitarVida = true;
      estaVivo = true;
    }
  }

  void morir() {
    estaVivo = false;
    quitarVida = false;
  }
}
