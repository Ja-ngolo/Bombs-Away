//TAB PARA OBJETOS DE FONDO
//no afectan jugabilidad, netamente esteticos

//CLASE NUBE
class Nube {

  int x, y, v;

  //constructor de propiedades de la nube
  public Nube(int x, int y) {
    this.x = x;
    this.y = y;
    v = 7;
  }

  void aparecer() {
    //dibujar la nube
    noStroke();

    fill(255, 228, 225, 200); //rosa niebla
    rect(x, y+25, pixel, pixel*4);
    rect(x+5, y+20, pixel, pixel*6);
    rect(x+10, y+15, pixel, pixel*7);
    rect(x+15, y+10, pixel, pixel*8);
    rect(x+20, y+10, pixel, pixel*7);
    rect(x+25, y+5, pixel, pixel*7);
    rect(x+30, y, pixel*2, pixel*8);
    rect(x+40, y, pixel, pixel*9);
    rect(x+45, y+5, pixel, pixel*8);
    rect(x+50, y+15, pixel, pixel*7);
    rect(x+55, y+20, pixel, pixel*6);
    rect(x+60, y+15, pixel, pixel*7);
    rect(x+65, y+15, pixel, pixel*6);
    rect(x+70, y+10, pixel, pixel*7);
    rect(x+75, y+10, pixel, pixel*6);
    rect(x+80, y+15, pixel, pixel*5);
    rect(x+85, y+20, pixel*2, pixel*5);
    rect(x+95, y+30, pixel, pixel*2);
  }

  void update() {
    //hacer que se mueva
    y += v;

    //condicional de reiniciar posiciones con random
    if (y >= height) {
      y = -height - grid;
      x = int(random(-50, width-50));
    }
  }
}

//ClASE OLAS, darle detalles al mar

class Ola {

  int x, y, v;

  //constructor de la ola
  public Ola(int x, int y) {
    this.x = x;
    this.y = y;
    v = 1;
  }

  void aparecer() {
    //dibujo de la ola
    noStroke();
    fill(0, 128, 128);//cerceta oscuro

    rect(x, y+10, pixel*2, pixel);
    rect(x+10, y+5, pixel, pixel);
    rect(x+15, y, pixel, pixel);
    rect(x+20, y+5, pixel, pixel);
    rect(x+25, y+10, pixel, pixel);
  }

  void update() {
    //hacer que se mueva
    y += v;

    //condicional de reiniciar posiciones con random
    if (y >= height) {
      y = -height;
      x = int(random(-10, width-10));
    }
  }
}
