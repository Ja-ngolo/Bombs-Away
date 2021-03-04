//CLASE DEL TANQUE ENEMIGO (Tanque antiaereo basado en el 9K35 Strela-10)

class Tanque 
{

  int x, y;
  boolean estaVivo = true;

  public Tanque(int x, int y)
  {
    this.x = x;
    this.y = y;
  }
  
  //habilidad de mostrarse
  void aparecer()
  {
    if (estaVivo == true)
    {
      noStroke();
      fill(70, 128, 80);
      rect(x+35, y+20, pixel*6, pixel*11);
      rect(x+40, y+75, pixel*4, pixel);
      
      fill(50);
      rect(x+30, y+25, pixel, pixel*9);
      rect(x+65, y+25, pixel, pixel*9);
      rect(x+45, y+25, pixel*2, pixel*4);
      rect(x+40, y+30, pixel*4, pixel*2);
      rect(x+45, y+75, pixel*2, pixel);
      rect(x+40, y+45, pixel, pixel);
      rect(x+55, y+45, pixel, pixel);
      rect(x+40, y+55, pixel, pixel);
      rect(x+55, y+55, pixel, pixel);
      rect(x+40, y+65, pixel, pixel);
      rect(x+55, y+65, pixel, pixel);
      
      fill(180);
      rect(x+35, y+25, pixel, pixel*5);
      rect(x+60, y+25, pixel, pixel*5);
      
    }
  }

  //habilidad de actualizar posiciones
  void update()
  {
    //actualizar la posicion en y
    y += 2;

    //condicional para que vuelva a aparecer en pantalla
    if (y > height+grid) 
    {
      //suficiente espacio para que los aviones no se sobrelapen
      y = -grid * 7;
      estaVivo = true;
    }
  }

  //habilidad para morir
  void morir() 
  {
    estaVivo = false;
  }
}
