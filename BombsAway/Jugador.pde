//CLASE DEL JUGADOR (avion inspirado en el F-117)

class Jugador{  
  //variables publicas del jugador
  int x, y;
  
  //constructor de los parametros
  public Jugador(int x, int y) {

    this.x = x;
    this.y = y;
  }

  void aparecer() {

    //dibujo del avion
    noStroke();
    //forma general
    fill(100);
    rect(x+45, y+5, pixel*2, pixel);
    rect(x+40, y+10, pixel*4, pixel*2);
    rect(x+35, y+20, pixel*6, pixel*2);
    rect(x+30, y+30, pixel*8, pixel*2);
    rect(x+25, y+40, pixel*10, pixel*2);
    rect(x+20, y+50, pixel*12, pixel*2);
    rect(x+15, y+60, pixel*14, pixel*2);
    rect(x+10, y+70, pixel*4, pixel);
    rect(x+70, y+70, pixel*4, pixel);
    rect(x+10, y+75, pixel*3, pixel);
    rect(x+75, y+75, pixel*3, pixel);
    rect(x+5, y+80, pixel*3, pixel);
    rect(x+80, y+80, pixel*3, pixel);
    rect(x+10, y+85, pixel, pixel);
    rect(x+85, y+85, pixel, pixel);
    rect(x+35, y+70, pixel*6, pixel);
    rect(x+40, y+75, pixel*4, pixel);
    rect(x+35, y+80, pixel*6, pixel);
    rect(x+30, y+85, pixel*3, pixel);
    rect(x+55, y+85, pixel*3, pixel);
    rect(x+25, y+90, pixel*3, pixel);
    rect(x+60, y+90, pixel*3, pixel);
    //detalles
    fill(50);
    rect(x+45, y+10, pixel*2, pixel);
    rect(x+35, y+25, pixel, pixel);
    rect(x+60, y+25, pixel, pixel);
    rect(x+30, y+30, pixel*2, pixel);
    rect(x+60, y+30, pixel*2, pixel);
    rect(x+40, y+40, pixel, pixel);
    rect(x+55, y+40, pixel, pixel);
    rect(x+45, y+50, pixel*2, pixel);
    rect(x+30, y+60, pixel*2, pixel);
    rect(x+60, y+60, pixel*2, pixel);
    rect(x+25, y+65, pixel*2, pixel);
    rect(x+65, y+65, pixel*2, pixel);
    rect(x+20, y+70, pixel*2, pixel);
    rect(x+70, y+70, pixel*2, pixel);
    rect(x+15, y+75, pixel*2, pixel);
    rect(x+75, y+75, pixel*2, pixel);
    rect(x+45, y+75, pixel*2, pixel);
    rect(x+15, y+80, pixel, pixel);
    rect(x+80, y+80, pixel, pixel);
    rect(x+40, y+85, pixel, pixel);
    rect(x+55, y+85, pixel, pixel);
    rect(x+30, y+90, pixel*2, pixel);
    rect(x+60, y+90, pixel*2, pixel);
    
    fill(200);
    rect(x+40, y+45, pixel, pixel);
    rect(x+55, y+45, pixel, pixel);
    rect(x+35, y+65, pixel, pixel);
    rect(x+60, y+65, pixel, pixel);
    rect(x+35, y+70, pixel*2, pixel);
    rect(x+55, y+70, pixel*2, pixel);
    rect(x+40, y+75, pixel, pixel);
    rect(x+55, y+75, pixel, pixel);
    rect(x+25, y+90, pixel, pixel);
    rect(x+70, y+90, pixel, pixel);

    fill(244, 164, 96);//naranja
    rect(x+45, y+15, pixel*2, pixel*2);
    rect(x+40, y+25, pixel, pixel);
    rect(x+55, y+25, pixel, pixel);
  }

  //metodo que necesita el input de una dirección
  void mover(int dir) {
    //condicional para que no se salga de la pantalla

    //uso de direcciones para conveniencia
    x += grid * dir;
  }
  
  //nueva funcion que permite al jugador perder vida
  void damage() {
    if (vidasJ == 0){
      state = perder;
    }else
    vidasJ --;
  }
}
