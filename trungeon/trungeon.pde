mapa asd;
jug player;
int movX, movY, Al = 12, An = 21;
float rAn, rAl;
boolean up, dn, rg, lf;

void setup(){
  fullScreen();
  frameRate(60);
  player = new jug();
  asd = new mapa(Al, An);
  asd.generacion();
  rAn = width/An;
  rAl = height/Al;
}

void draw(){
  
  background(0);
  
  movX = asd.dib(up, dn, rg, lf);
  
  player.show();
}

void keyPressed(){
  if(key == 'w'){
    up = true;
  }
  
  if(key == 's'){
    dn = true;
  }
  if(key == 'a'){
    lf = true;
  }
  
  if(key == 'd'){
    rg = true;
  }
  
  if(key == ' '){
    asd.ataq();
  }
}

void keyReleased(){
  if(key == 'w'){
    up = false;
  }
  
  if(key == 's'){
    dn = false;
  }
  if(key == 'a'){
    lf = false;
  }
  
  if(key == 'd'){
    rg = false;
  }  
}