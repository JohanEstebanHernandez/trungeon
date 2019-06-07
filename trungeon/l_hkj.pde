//Solo para iniciar, ya se debio cargar los dos primeros mapas.
//Solo mostrar cuando se vaya por el pasillo.
//Un metodo unico para generar, otro para borrar y el tipico para mostrar
//La generacion se basa en una matriz para no joderme la vida, todos los mapas
//   tendran un diseño rectangular por lo que la colision para salir del mapa
//   sera igual en todos.
//Solo se necesita que en un cuadro que este el lado bloquee el movimiento
//   se haria solo ananlizando los cuatro cuadrados que esten al lado del 
//   personaje y por si acaso esta entre dos cuadros (a lo alto o a la ancho)
//   tambien con esos.




/* PRIMER IDEA

if (mapa1[x-1][y] != 0) {
      if (((width/2)-trasX)-(x*cX) <= vel-1) {
        if (iz == true) {
          trasX = int((width/2)-x*cX)-1;
        }
        iz = false;
      }
    }

    if (mapa1[x+1][y] != 0) {
      if (((x+1)*cX)-(sizePlayer+(width/2)-trasX) <= vel-1) {
        if (de == true) {
          trasX = int((width/2)+sizePlayer-((x+1)*cX))+1;
        }
        de = false;
      }
    }

    if (mapa1[x][y-1] != 0) {
      if (((height/2)-trasY)-(y*cY) <= vel-1) {
        if (ar == true) {
          trasY = int((height/2)-y*cY)-1;
        }
        ar = false;
      }
    }

    if (mapa1[x][y+1] != 0) {
      if (((y+1)*cY)-(sizePlayer+(height/2)-trasY) <= vel-1) {
        if (ab == true) {
          trasY = int((height/2)+sizePlayer-((y+1)*cY))+1;
        }
        ab = false;
      }
    }

     if (mapa1[x-1][y-1] != 0) {
      if (((width/2)-trasX)-(x*cX) <= vel - 1) {
        if ((height/2)-trasY-(y*cY) <= vel-1) {
          if (ar == true) {
            trasY = int((height/2)-(y*cY))-1;
            ar = false;
          }
          if (iz == true) {
            trasX = int((width/2)-(x*cX))-1;
            iz = false;
          }
        }
      }
    }

    if (mapa1[x+1][y-1] != 0) {
      if ((height/2)-trasY-(y*cY) <= vel-1) {
        if (((x+1)*cX)-(sizePlayer+(width/2)-trasX) <= vel-1) {
          if (ar == true) {
            trasY = int((height/2)-(y*cY))-1;
            ar = false;
          }
          if (de == true) {
            if (((x+1)*cX)-(sizePlayer+(width/2)-trasX) > 0) {
              trasX = int((width/2)+sizePlayer-((x+1)*cX))+1;
              de = false;
            }
          }
        }
      }
    }

    
    */
    
    
    /*SEGUNDA IDEA
    
    if (x > 0 && x < nLinAn) {
      if (y > 0 && y < nLinAl) {

        if (ar == true) {
          if (mapa1[x][y-1] != 0) {
          println((height/2)-trasY-(y*cY));
            if ((height/2)-trasY-(y*cY) < 0) {
              trasY = int((height/2)-y*cY)-1;
            }
          }
          
        }

        if (ab == true) {
        }

        if (de == true) {
        }

        if (iz == true) {
        }
      }
    }
    
    */
    
    /*TERCERA IDEA
    
    if(mapa1[x][y] != 0){
      if(ar == true){
        trasY = int((height/2)-(1+y)*cY)-1;
      }
      if(iz == true){
        trasX = int((width/2)-(1+x)*cX)-1;
      }
    }
    
    */
