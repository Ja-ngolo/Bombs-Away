//SURFACE TO AIR MISSILE (inspirado en los 9M31M del strel-10)

class SAM 
{
  //variables propia de misil
  int s = 7;
  boolean activo = true;
  boolean disparado = false;
  int x, y;
  
  //parametros
  public SAM (int x, int y)
  {
    this.x = x;
    this.y = y;
  }
  
  
  //mostrar el misil en pantalla
  void aparecer() 
  {

    //mientras no haya un hit se dibuja
    if (activo == true) 
    {
      fill(242);
      noStroke();
      rect(x+5, y+10, pixel, pixel*6);
      rect(x, y+10, pixel*3, pixel);
      
      fill(50);
      rect(x+5, y+10, pixel, pixel);
      
      fill(230, 0, 0);
      rect(x+5, y+25, pixel, pixel*2);
      
      fill(255,128,0);
      rect(x+5, y+5, pixel, pixel);
     
      fill(255, 217, 25);
      rect(x+5, y, pixel, pixel);
    }
  }  
  
  //actualizar el misil
  void volar() 
  {

    //mientras no haya un hit se mueve
    if (activo == true) 
    {
      y += s;
    }
  }
  
  //funcion de colision
  void boom() 
  {
    //desactivar el misil
    activo = false;
  }
}
