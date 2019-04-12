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