class mapa {

  int nLinAl, nLinAn, trasX, trasY, x, y, i, o, vel = 8;
  int [][] mapa1, mapa2;
  float  cX, cY, sizePlayer = 50;
  mapa(int nl, int nl1) {

    nLinAl = nl;
    nLinAn = nl1;

    cX = (width/nLinAn);//Lo que se muestra
    cY = (height/nLinAl);
  }

  void generacion() {//Lo que el mapa tiene
    mapa1 = new int[nLinAn][nLinAl];

    //El 1 es para los internos
    //El 2 es para los bordes
    x=int(random(1, nLinAn-1));
    y=int(random(1, nLinAl-1));
    x = y = 5;
    println(x+" "+y);
    for (i = 0; i < nLinAn; i ++) {
      for ( o = 0; o < nLinAl; o++) {
        mapa1[i][o] = 0;
        if (i == 0 || i == (nLinAn-1)) {
          mapa1[i][o] = 2;
        }
        if (o == 0 || o == (nLinAl-1)) {
          mapa1[i][o] = 2;
        }
        if (x == i && y == o) {
          mapa1[i][o] = 1;
        }
      }
    }
  }

  void ataq() {

    fill(250, 250, 0);
    ellipseMode(CENTER);
    ellipse(width/2, height/2, 200, 200);
  }

  int dib(boolean ar, boolean ab, boolean de, boolean iz) {//tras = posicion


    if (ar) {
      trasY = trasY + vel;//esta pocision esta con +wdth/2 y +hgth/2
    }
    if (ab) {
      trasY = trasY - vel;
    }
    if (de) {
      trasX = trasX - vel;
    }
    if (iz) {
      trasX = trasX + vel;
    }

    //COLISIONES INICIO---------------------------------------------------------
    //                            ACAAAAAAAAAAAAAAAAAAAAAA

    x = int((width/2-trasX)/cX);
    y = int((height/2-trasY)/cY);

    o = 4;

    
    if(mapa1[x][y] != 0){
      if(ar == true){
        trasY = int((height/2)-(1+y)*cY)-1;
      }
      if(iz == true){
        trasX = int((width/2)-(1+x)*cX)-1;
      }
    }
    
    //COLISIONES FINAL---------------------------------------------------------


    pushMatrix();
    translate(trasX, trasY);
    stroke(250);
    fill(250, 0, 0);
    for (i = 0; i <= nLinAl; i++) {
      line(-cX, i*cY, width+cX, i*cY);
    }

    for (i = 0; i < nLinAn; i++) {
      line(i*cX, -cY, i*cX, height+cY);
      for (o = 0; o <nLinAl; o++) {
        if (mapa1[i][o] == 1) {
          fill(190, 250, 100);
          rect(i*cX, o*cY, cX, cY);
        }
        if (mapa1[i][o] == 2) {
          fill(90, 90, 90);
          rect(i*cX, o*cY, cX, cY);
        }
      }
    }
    popMatrix();
    return trasX;
  }
}
