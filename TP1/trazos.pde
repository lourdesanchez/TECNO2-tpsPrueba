class Trazos {
  Interaccion i;

  PImage trazos;
  int cantidad;
  int cantTrazosLargos = 2;
  int ancho, alto;
  int opacidad;
  
  String estado;
  int contador;
  //int limite;
  
  float x;
  float y;
  
   PFont tipografia;

  Trazos () {

    i = new Interaccion();
    cantidad = 5;
    ancho = 220;
    alto = 300;
    opacidad = 200;
    
    this.tipografia = loadFont("InkFree-48.vlw");
    
    estado = "inicio";
    contador = 0;
  }

  void dibujar () {
    translate (-90, -100);
    contador++;
    println("contador:" + contador);
    println("estado:" + estado);
  }
  
  void actualizarT(){
    if(estado.equals("inicio")){
      trazosNormalesP1();
      trazosNormalesP2();
      trazosNormalesP3 ();
      trazosNormalesP4 ();
      trazoLargo();
      
      if(contador>=100){
        estado = "fin";
      }
      
    }else if (estado.equals("fin")){
    terminaObra();
    contador =0; 
    /*if(contador>=limite){
      estado="inicio";
      contador =0;
      
    }*/
  }
    
  }
  

  void trazosNormalesP1() {
    for (int i = 0; i < cantidad; i++) {
      String nombre = "0" + i + ".png";
      trazos = loadImage ( nombre );
      trazos.filter ( INVERT );

      tint (paleta.darColorPaletaUno());
      image (trazos, random (width), random (height), ancho, alto);
    }
  }

  void trazosNormalesP2 () {
    for (int i = 0; i < cantidad; i++) {
      String nombre = "0" + i + ".png";
      trazos = loadImage ( nombre );
      trazos.filter ( INVERT );

      tint (paleta.darColorPaletaDos(), opacidad);
      image (trazos, random (width), random (height), ancho, alto);
    }
  }

  void trazosNormalesP3 () {
    for (int i = 0; i < cantidad; i++) {
      String nombre = "0" + i + ".png";
      trazos = loadImage ( nombre );
      trazos.filter ( INVERT );

      tint (paleta.darColorPaletaTres());
      image (trazos, random (width), random (height), ancho, alto);
    }
  }

  void trazosNormalesP4 () {
    for (int i = 0; i < cantidad; i++) {
      String nombre = "0" + i + ".png";
      trazos = loadImage ( nombre );
      trazos.filter ( INVERT );

      tint (paleta.darColorPaletaCuatro());
      image (trazos, random (width), random (height), ancho, alto);
    }
  }

  void trazoLargo() {
    int tancho = 100;
    int tlargo = 230;
    for (int i = 0; i < cantTrazosLargos; i++) {
      String nombre = "0" + i + ".png";
      trazos = loadImage ( nombre );
      trazos.filter ( INVERT );
      tint (paleta.darColorPaletaUno());
      image (trazos, random (width), random (height), tancho, tlargo);
    }
  }

    void terminaObra(){
    cantidad = 0;
    cantTrazosLargos = 0;
    textFont(this.tipografia);
    fill(#70BBA4);
    textSize(30);
    text("ROMA", 380,630);
    contador=0;
    
  }
    }
 
