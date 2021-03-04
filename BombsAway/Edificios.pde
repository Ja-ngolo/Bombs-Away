//CLASE DE LOS OBJETIVOS (Edificios guvernamentales de yugoslavia)
class Edificio 
{

  int x, y;
  boolean esta = true;

  public Edificio(int x, int y)
  {
    this.x = x;
    this.y = y;
  }
  
  //habilidad de mostrarse
  void aparecer()
  {
    if (esta == true)
    {
      noStroke();
      fill(179, 89,0);
      rect(x+10, y+55, pixel*4, pixel*7);
      rect(x+30, y+15, pixel*7, pixel*15);
      rect(x+65, y+45, pixel*5, pixel*9);
      
      fill(255,255,25);
      rect(x+15, y+60, pixel*3, pixel);
      rect(x+15, y+70, pixel*3, pixel);
      rect(x+15, y+80, pixel*4, pixel);
      rect(x+35, y+20, pixel*5, pixel);
      rect(x+35, y+30, pixel*5, pixel);
      rect(x+35, y+40, pixel*5, pixel);
      rect(x+65, y+50, pixel*4, pixel);
      rect(x+65, y+60, pixel*4, pixel);
      rect(x+65, y+70, pixel*4, pixel);
      rect(x+65, y+80, pixel*4, pixel);
      
      fill(150, 25, 0);
      rect(x+40, y+60, pixel*3, pixel*2);
      rect(x+45, y+50, pixel, pixel*2);
      rect(x+35, y+60, pixel, pixel);
      rect(x+55, y+60, pixel, pixel);
      rect(x+35, y+70, pixel, pixel);
      rect(x+55, y+70, pixel, pixel);
      
      fill(200);
      rect(x+45, y+80, pixel*2, pixel*2);
    }
    
    if (esta == false)
    {
      noStroke();
      fill(179, 89,0);
      rect(x+10, y+85, pixel*15, pixel);
      rect(x+15, y+80, pixel*14, pixel);
      rect(x+20, y+75, pixel*13, pixel);
      rect(x+30, y+70, pixel*10, pixel);
      rect(x+35, y+65, pixel*8, pixel);
      rect(x+35, y+60, pixel*7, pixel);
      rect(x+35, y+55, pixel*6, pixel);
      rect(x+45, y+50, pixel*4, pixel);
      
      fill(50);
      rect(x+15, y+80, pixel*4, pixel);
      rect(x+25, y+70, pixel, pixel);
      rect(x+40, y+55, pixel*3, pixel);
      rect(x+45, y+60, pixel, pixel);
      rect(x+45, y+50, pixel, pixel);
      rect(x+65, y+70, pixel*3, pixel);
      rect(x+65, y+80, pixel*3, pixel);
      
      fill(200);
      rect(x+45, y+80, pixel*2, pixel*2);
      
      fill(150, 25, 0);
      rect(x+45, y+75, pixel*3, pixel*2);
      rect(x+50, y+65, pixel, pixel*2);
      rect(x+40, y+75, pixel, pixel);
      rect(x+60, y+75, pixel, pixel);
      rect(x+40, y+85, pixel, pixel);
      rect(x+60, y+85, pixel, pixel);
      

    }
  }

  //habilidad de actualizar posiciones
  void update()
  {
    //actualizar la posicion en y
    y = y + 4;

    //condicional para que vuelva a aparecer en pantalla
    if (y > height) 
    {
      vidasJ = vidasJ - 1;
    }
  }

  //habilidad para morir
  void morir() 
  {
    esta = false;
  }
}
