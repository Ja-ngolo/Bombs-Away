//BOMBS AWAY!
//videojuego inspirado en los ataques aereos a Yugoslavia durante la guerra de Kosovo
//controles 'a' y 'd' para moverse 'p' y 'o' para disparar


//INICIALIZACIÓN DE VARIABLES (globales)

//definir variables de estados
int intro = 1;
int inst1 = 12;
int primero = 2;
int inst2 = 13;
int segundo = 3;
int inst3 = 14;
int tercero = 4;
int ganar = 5;
int perder = 6;
int nombre = 7;
int puntajes = 8;

int state = intro;

PImage tut1, tut2, tut3;

//definir al jugador
Jugador j;
//variables del jugador
int Xj = 200;
int vidasJ = 3;

//definir el arreglo de ENEMIGOS
Enemigo[] es;

//definir el arreglo de MISILES
Misil[] ms;
//variables de los misiles
int contador = 0;
int misi = 5; // contador inverso

//definir el arreglo de BOMBAS
Bomba[] bs;
int cont = 0;
int bbs = 10; //contador inverso

//definir el arreglo de SAMs (misiles enemigos)
SAM[] sams;
int conta = 0;

//definir arreglo de TANQUES
Tanque[] ts;

//definir arreglo de EDIFICIOS
Edificio[] fs;
int hits = 0;

//definir el arreglo de las NUBES
Nube[] ns;

//definir el arreglo para OLAS
Ola[] os;

//definicion del tamaño del GRID, modificador del resto de objetos
int grid = 100;

//definicion de tamaño de PIXEL, para dibujar los "sprites"
int pixel = 5;

//definir variable para el nombre del jugador
String elNombre = "";

//definir variables para la tabla
Table tabla;
int filas;
int puntaje;


//FUNCION DE RESETEAR EL JUEGO
void resetGame() {

  //reiniciar las vidas
  vidasJ = 3;

  //reiniciar misiles y bombas
  contador = 0;
  cont = 0;
  bbs = 10;
  misi = 5;
  hits = 0;

  //reiniciar puntaje
  puntaje = 0;

  //posicion inicial del jugador
  j = new Jugador(Xj, height-grid*2);

  //INICIALIZAR ARREGLOS (tamaño de arreglos)
  es = new Enemigo[18];

  sams = new SAM[80];

  fs = new Edificio[8];

  ms = new Misil[5];

  bs = new Bomba[10];

  ns = new Nube[10];

  os = new Ola[20];

  ts = new Tanque[20];

  //LLAMADO DE CLASES

  //FILAS DE AVIONES
  //contador de los aviones dibujados
  int indx = 0;

  //primera fila
  for (int i = 0; i < 4; i += 1) {
    //variable en y para dar espaciado a los aviones
    int y = -(i * 300) + 400;

    //creación de cada avion en el arreglo
    es[indx] = new Enemigo(0, y, 4);

    //sumar al contador
    indx += 1;
  }

  //segunda fila
  for (int i = 0; i < 3; i += 1) {
    //variable en y para dar espaciado a los aviones se le suma un ofset
    int y = -(i * 700);

    //creación de cada avion en el arreglo
    es[indx] = new Enemigo(grid, y, 3);

    //sumar al contador
    indx += 1;
  }

  //tercera fila
  for (int i = 0; i < 4; i += 1) {
    //variable en y para dar espaciado a los aviones se le suma un ofset
    int y = -(i * 600 );

    //creación de cada avion en el arreglo
    es[indx] = new Enemigo(grid*2, y, 1);

    //sumar al contador
    indx += 1;
  }

  //cuarta fila
  for (int i = 0; i < 4; i += 1) {
    //variable en y para dar espaciado a los aviones se le suma un ofset
    int y = -(i * 300) + 200;

    //creación de cada avion en el arreglo
    es[indx] = new Enemigo(grid*3, y, 5);

    //sumar al contador
    indx += 1;
  }

  //quinta fila
  for (int i = 0; i < 3; i += 1) {
    //variable en y para dar espaciado a los aviones se le suma un ofset
    int y = -(i * 400) + 100;

    //creación de cada avion en el arreglo
    es[indx] = new Enemigo(grid*4, y, 3);

    //sumar al contador
    indx += 1;
  }

  //creacion de posicion inicial de arreglos de misiles
  for (int i = 0; i<5; i += 1) {
    ms[i] = new Misil(700, 900);
  }

  //creacion de posicion inicial de arreglo de bombas
  for (int i = 0; i<10; i += 1)
  {
    bs[i] = new Bomba(700, 900);
  }


  //FILAS DE TANQUES

  //contador para tanques
  int ndx = 0;

  //fila 1
  for (int i = 0; i < 4; i += 1) 
  {
    //variable en y para dar espaciado a los aviones
    int y = -(i * 500);

    //creación de cada avion en el arreglo
    ts[ndx] = new Tanque(0, y);

    //sumar al contador
    ndx += 1;
  }

  //fila 2
  for (int i = 0; i < 4; i += 1) 
  {
    //variable en y para dar espaciado a los aviones
    int y = -(i * 300)+200;

    //creación de cada avion en el arreglo
    ts[ndx] = new Tanque(grid, y);

    //sumar al contador
    ndx += 1;
  }

  //fila 3
  for (int i = 0; i < 4; i += 1) 
  {
    //variable en y para dar espaciado a los aviones
    int y = -(i * 400);

    //creación de cada avion en el arreglo
    ts[ndx] = new Tanque(grid*2, y);

    //sumar al contador
    ndx += 1;
  }

  //fila 4
  for (int i = 0; i < 4; i += 1) 
  {
    //variable en y para dar espaciado a los aviones
    int y = -(i * 500)+300;

    //creación de cada avion en el arreglo
    ts[ndx] = new Tanque(grid*3, y);

    //sumar al contador
    ndx += 1;
  }  

  //fila 5
  for (int i = 0; i < 4; i += 1) 
  {
    //variable en y para dar espaciado a los aviones
    int y = -(i * 300);

    //creación de cada avion en el arreglo
    ts[ndx] = new Tanque(grid*4, y);

    //sumar al contador
    ndx += 1;
  }

  //INICIO DE ARREGLO DE SAMs
  for (int i = 0; i < 80; i += 1)
  {
    sams[i] = new SAM(700, 100);
  }

  //FILAS DE EDIFICIOS
  //contador edificios
  int dx = 0;
  //1f
  for (int i = 0; i < 2; i ++)
  {
    int y = -(i * 500)-300;
    fs[dx] = new Edificio(0, y);
    dx ++;
  }
  //2f
  for (int i = 0; i < 1; i ++)
  {
    int y = -(i * 100)- 500;
    fs[dx] = new Edificio(grid, y);
    dx ++;
  }
  //3f
  for (int i = 0; i < 2; i ++)
  {
    int y = -(i * 600)-400;
    fs[dx] = new Edificio(grid*2, y);
    dx ++;
  }  
  //4f
  for (int i = 0; i < 1; i ++)
  {
    int y = -(i * 100) - 200;
    fs[dx] = new Edificio(grid*3, y);
    dx ++;
  }
  //5f
  for (int i = 0; i < 2; i ++)
  {
    int y = -(i * 400)-400;
    fs[dx] = new Edificio(grid*4, y);
    dx ++;
  }  

  //creacion de nubes por arreglo (ignoran el grid para dinamismo)
  for (int i=0; i < 10; i += 1) {
    ns[i] = new Nube(int(random(-50, width-50)), int(random(-3000, height)));
  }

  //creacion de olas por medio de un arreglo
  for (int i = 0; i < 20; i += 1) {
    os[i] = new Ola(int(random(-10, width-10)), int(random(-height+grid*3, height)));
  }
}


//SETUP DEL WORKSPACE

void setup() {

  frameRate(30);
  //tamaño vertical del espacio
  size(500, 900);
  
  tut1 = loadImage("Instu1.png");
  tut2 = loadImage("Instu2.png");
  tut3 = loadImage("Instu3.png");
  
  //cargar talbla de archivo csv para puntajes
  tabla = loadTable("puntos.csv", "header");
  //contar cuantas filas hay
  filas = tabla.getRowCount();

  //se define el texto
  textAlign(CENTER);
  textSize(14);

  if (state == tercero)
  {
    cont = 0;
    bbs = 10;
    contador = 0;
    misi = 5;
  }

  //se llama al reset game
  resetGame();
}



//DRAW (LO QUE SE DIBUJA O PASA CADA FRAME)

void draw() {

  //DEFINICION DE LOS ESTADOS DEL JUEGO


  if (state == intro) {
    resetGame();
    background(102, 205, 170);//aguamariana medio

    j.aparecer();

    for (Nube nube : ns) {
      nube.aparecer();
      nube.update();
    }

    fill(50);
    text("[E N T E R]", width/2, (height/2)+grid*2);
    text("BOMBSAWAY!", width/2, height/2);
  } else if (state == inst1) {
    background(200);
    image(tut1, 0,0);
  } 

  //PRIMER NIVEL

  else if (state == primero) {
    //definicion del fondo (blanco mientras se define por niveles)
    background(102, 205, 170);//aguamariana medio

    //llamado de olas por un for each
    for (Ola ola : os) {
      ola.aparecer();
      ola.update();
    }

    //llamado de las nubes con un for each
    for (Nube nube : ns) {
      nube.aparecer();
      nube.update();
    }
    //llamar funciones del jugador
    j.aparecer();
    noFill();
    stroke(0);

    //creación de un "for each" para el arreglo de enemigos
    for (Enemigo enemigo : es) 
    {
      //enemigo es variable local del for (cada enemigo)
      //llamado de las funciones de enemigo
      enemigo.aparecer();
      stroke(0);
      noFill();
      enemigo.actualizar();

      //calculo de las distancias para calcular el daño
      if (dist(j.x+50, j.y+50, enemigo.x+50, enemigo.y+50) < 100 && enemigo.quitarVida == true) {
        j.damage();
        enemigo.morir();
      }

      for (Misil misil : ms) {
        if (dist(misil.posX+10, misil.posY+25, enemigo.x+50, enemigo.y+50) < 50 && misil.activo == true && enemigo.quitarVida == true) {
          enemigo.morir();
          misil.boom();
        }
      }
    }

    //creacion de un "for each" para el arreglo de misiles
    for (int i = 0; i < 5; i += 1) {
      ms[i].aparecer();
      ms[i].volar();
    }    

    //AQUI DEBERIAN IR LOS MISILES, BUT NOT YET
    //dibujo de barras de ui al final para que sobresalga de todo
    noStroke();
    fill(50);
    rect(0, 0, width, grid);
    rect(0, height-grid, width, grid);

    //aparicion de contador de vidas
    fill(250);
    text("VIDAS: " + vidasJ, 50, height-(grid/2) );

    if (misi > 0) {
      fill(250);
      text("MISILES " + misi, width-grid, height-grid/2);
    }
    if (misi <= 0) {
      fill(250, 0, 0);
      text("MISILES " + 0, width-grid, height-grid/2);
    }

    fill(250);
    text("PUNTAJE "+ (puntaje = puntaje + frameCount/30), width/2-30, grid/2);

    if (puntaje >= 100000)
    {
      state = inst2;
    }
  } 

  ///segundas instrucciones
  else if (state == inst2)
  {
    background(200);
    image(tut2,0,0);
  }

  //// SEGUNDO NIVEL

  else if (state == segundo) 
  {
    background(128, 128, 0);

    //LLAMADO DE LOS DETALLES DE ESCENARIO

    //for de los enemigos
    for (Tanque tanque : ts)
    {
      tanque.aparecer();
      stroke(0);
      noFill();
      tanque.update();

      if (tanque.y == 200)
      {
        if (conta < 80)
        {
          sams[conta].activo = true;
          sams[conta].x = tanque.x + 45;
          sams[conta].y = tanque.y + 25;
          conta ++;
        }
      }
    }

    //for para los SAMs
    for (int i = 0; i < 80; i++)
    {
      sams[i].aparecer();
      sams[i].volar();

      if (dist(j.x+50, j.y+50, sams[i].x+5, sams[i].y+25) < 50 && sams[i].activo == true)
      {
        j.damage();
        sams[i].boom();
      }
    }

    //nubes
    for (Nube nube : ns) 
    {
      nube.aparecer();
      nube.update();
    }

    //jugador
    j.aparecer();
    noFill();
    stroke(0); 


    //AL FINAL PARA QUE SIEMPRE SE VEA

    noStroke();
    fill(50);
    rect(0, 0, width, grid);
    rect(0, height-grid, width, grid);

    //aparicion de contador de vidas
    fill(250);
    text("VIDAS: " + vidasJ, 50, height-(grid/2) );

    fill(250);
    text("PUNTAJE "+ (puntaje = puntaje + frameCount/30), width/2-30, grid/2);

    if (puntaje >= 300000)
    {
      state = inst3;
    }
  } 

  //TERCERAS INSTRUCCIONES
  else if (state == inst3)
  {
    background(200);
    image(tut3,0,0);
  }

  //TERCER NIVEL
  else if (state == tercero)
  {
    background(80, 121, 96);

    //creacion de un for para las bombas
    for (int i = 0; i < 10; i += 1) {
      bs[i].aparecer();
      bs[i].volar();
    }    


    //for de los edificios
    for (Edificio edificio : fs)
    {
      edificio.aparecer();
      stroke(0);
      noFill();
      edificio.update();

      for (Bomba bomba : bs)
      {
        if (dist(bomba.x+5, bomba.y+25, edificio.x+50, edificio.y+50) < 50 && bomba.activa == true)
        {
          bomba.boom();
          edificio.morir();
          hits ++;
        }
      }
    }

    if (hits == 8)
    {
      state = ganar;
    }



    for (Nube nube : ns) 
    {
      nube.aparecer();
      nube.update();
    }

    //jugador
    j.aparecer();
    noFill();
    stroke(0);    


    noStroke();
    fill(50);
    rect(0, 0, width, grid);
    rect(0, height-grid, width, grid);

    //aparicion de contador de vidas
    fill(250);
    text("VIDAS: " + vidasJ, 50, height-(grid/2) );

    if (bbs > 0) {
      fill(250);
      text("BOMBAS " + bbs, width-grid, height-grid/2);
    }
    if (bbs <= 0) {
      fill(250, 0, 0);
      text("BOMBAS " + 0, width-grid, height-grid/2);
    }

    fill(250);
    text("OBJETIVOS "+ hits +"/8", width-grid, grid/2 );

    fill(250);
    text("PUNTAJE "+ (puntaje = puntaje + frameCount/30), width/2-30, grid/2);
  }

  ///

  else if (state == nombre) 
  {
    background(255);
    fill(50);
    text("ESCRIBA SU NOMBRE", width/2, height/2 - 50);
    text(elNombre, width/2, height/2);
  } else if (state == ganar) {
    background(200, 200, 250);
    fill(50);
    text("BOMBARDEO EXITOSO", width/2, height/2);
  } else if (state == perder) {
    background(250, 200, 200);
    fill(50);
    text("HAS SIDO DERRIBADO", width/2, height/2);
  } else if (state == puntajes) {
    background(255, 155, 246);
    fill(0, 246, 239);
    text("PUNTAJES RECIENTES", width/2, height/2 - grid);

    fill(50);
    for (int f = 0; f < filas; f = f + 1) {  
      String nom = tabla.getString(f, "nombre");
      int puntos = tabla.getInt(f, "puntaje");

      String imp = nom + "  " + puntos;

      text(imp, width/2, height/2 + 20*f);
    }
  }
}


//EVENTOS DE CUANDO SE PRESIONA UNA TECLA
void keyPressed() {

  //detectar el enter para iniciar juego
  if (state == intro) {

    if (keyCode == ENTER) {
      state = inst1;
    }
  }

  //si esta en tutorial llevar a primer nivel
  else if (state == inst1) {

    if (keyCode == ENTER) {
      state = primero;
    }
  }

  //si esta en instrucciones 2 llevar al siguente nivle
  else if (state == inst2)
  {
    if (keyCode == ENTER) {
      state = segundo;
    }
  }

  //si esta en instuccion 3 llevar a al siguiente
  else if (state == inst3)
  {
    if (keyCode == ENTER) {
      state = tercero;
    }
  }

  //si esta en perder ir a nombres para crear la tabla
  else if (state == perder || state == ganar) {
    if (keyCode == ENTER) {
      state = nombre;
    }
  }

  //si esta en puntajes regresar a inicio
  else if (state == puntajes) {
    if (keyCode == ENTER) {
      state = intro;
    }
  }


  //cosas que solo pasan entre los niveles
  if (state == primero || state == segundo || state == tercero) {
    //detectar cuando se presiona una tecla u otra
    if (key == 'a') {

      //movimiento a la izquierda en la funcion mover es negativo
      j.mover(-1);
    }

    if (key == 'd') {

      //movimiento a la derecha en la funcion mover es positivo
      j.mover(1);
    }

    //detectar la tecla de disparo
    if (key == 'o' && state == primero) 
    {
      //condicional de disparar el misil
      if (contador < 5) {
        //disparo en el numero que voy se vuelve verdadero
        ms[contador].disparado = true;
        //asignar posicion sobre el avion
        ms[contador].posX = j.x + grid/2 - pixel;
        ms[contador].posY = j.y + pixel*2;
        //sumar al contador
        contador += 1;
        //restar al otro
        misi = misi -1;
      } else {
        contador = 0;
      }
    }

    //detectar la tecla de bomba
    if (key == 'p' && state == tercero)
    {
      if (cont < 10) 
      {
        //disparo en el numero que voy se vuelve verdadero
        bs[cont].disparada = true;
        //asignar posicion sobre el avion
        bs[cont].x = j.x + grid/2 - pixel;
        bs[cont].y = j.y + pixel*2;
        //sumar al contador
        cont += 1;
        //restar al otro
        bbs = bbs -1;
      } else 
      {
        cont = 0;
      }
    }
  }

  if (state == nombre) {
    if (keyCode == TAB) {
      TableRow nuevaFila = tabla.addRow();
      nuevaFila.setString("nombre", elNombre);
      nuevaFila.setInt("puntaje", puntaje);

      if (tabla.getRowCount() > 10) {
        tabla.removeRow(0);
      }

      saveTable(tabla, "data/puntos.csv");

      tabla = loadTable("puntos.csv", "header");
      filas = tabla.getRowCount();
      elNombre = "";

      state = puntajes;
    } else if (keyCode == BACKSPACE) {
      elNombre = elNombre.substring(0, elNombre.length()-1);
    } else if (keyCode == ENTER || keyCode == SHIFT) {
    } else {
      elNombre = elNombre + key;
      println(elNombre);
    }
  }
}
