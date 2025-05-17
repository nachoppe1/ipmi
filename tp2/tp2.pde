PImage miImagen, miImagen2, miImagen3, miImagen4, miImagen5;
PFont miFuente;
int pantalla = 1;

String textoPantalla1 = "Ash Ketchum es un joven de Pueblo Paleta,\n que sueña con ser Maestro Pokémon.\n Recibe a Pikachu como su primer Pokémon\n y comienza su viaje por la región de Kanto.";
String textoPantalla2 = "Ash hace amistad con Misty y Brock, \n quienes lo acompañan en su viaje.\n Enfrenta a rivales como Gary y \n aprende a trabajar en equipo,\n confiar en sus Pokémon y\n crecer como entrenador.";
String textoPantalla3 = "Ash recorre Kanto desafiando gimnasios para obtener medallas. Participa en la Liga Pokémon. Aunque no gana,\ndemuestra cuánto ha madurado como entrenador.";
String textoPantalla4 = "Jessie, James y Meowth del Team Rocket son sus rivales, intentan robar a Pikachu \n casi todos los dias.";
String textoPantalla5 = "Ash continúa su aventura \n por otras regiones como Johto y Hoenn.";

int tiempoCambio = 10000;
int tiempoInicio = 0;

float textoX = -600;
float textoY = 500;
float velocidadX = 2.9;
float velocidadY = 0.5;
float textoX3 = 640;
float textoY4 = 0;
float opacidad5 = 0;
float velocidadX3 = 3;
float velocidadY4 = 2;
float velocidadOpacidad = 2;

int botonX = 500;
int botonY = 400;
int botonAncho = 120;
int botonAlto = 40;

void setup() {
  size(640, 480);
  miFuente = loadFont("NotoSerifKannada-Regular-20.vlw");
  miImagen = loadImage("img1.jpeg");
  miImagen2 = loadImage("img2.jpg");
  miImagen3 = loadImage("imag3.jpg");
  miImagen4 = loadImage("immag4.jpg");
  miImagen5 = loadImage("ashcamino.jpg");
  tiempoInicio = millis();
}

void draw() {
  background(0);
  int duracionPantalla = 10000;
  pantalla = ((millis() - tiempoInicio) / duracionPantalla) + 1;
  if (pantalla > 5) pantalla = 5;

  if (pantalla == 1) {
    image(miImagen, 0, 0, 640, 480);
    fill(255);
    textFont(miFuente, 20);
    textSize(30);
    if (textoX < 20) {
      textoX += velocidadX;
    }
    text(textoPantalla1, textoX, 240);
  }

  if (pantalla == 2) {
    image(miImagen2, 0, 0, 640, 480);
    fill(255);
    textFont(miFuente, 20);
    textSize(30);
    textoY -= velocidadY;
    text(textoPantalla2, 20, textoY);
    if (textoY < -200) {
      textoY = height;
    }
  }

  if (pantalla == 3) {
    image(miImagen3, 0, 0, 640, 480);
    fill(255);
    textFont(miFuente, 20);
    textSize(30);
    if (textoX3 > 20) {
      textoX3 -= velocidadX3;
    }
    text(textoPantalla3, textoX3, 180, 600, 200);
  }

  if (pantalla == 4) {
    image(miImagen4, 0, 0, 640, 480);
    fill(255);
    textFont(miFuente, 20);
    textSize(30);
    textoY4 -= velocidadY4;
    if (textoY4 < -200) {
      textoY4 = height;
    }
    text(textoPantalla4, 20, textoY4, 600, 200);
  }

  if (pantalla == 5) {
    image(miImagen5, 0, 0, 640, 480);
    if (opacidad5 < 255) {
      opacidad5 += velocidadOpacidad;
    }
    fill(255, opacidad5);
    textFont(miFuente, 20);
    textSize(30);
    text(textoPantalla5, 20, 240, 600, 160);

    fill(0, 150, 255);
    rect(botonX, botonY, botonAncho, botonAlto, 10);
    fill(255);
    textSize(20);
    textAlign(CENTER, CENTER);
    text("Reiniciar", botonX + botonAncho / 2, botonY + botonAlto / 2);
    textAlign(LEFT, BASELINE); // para volver a alineación por defecto
  }
}

void mousePressed() {
  if (pantalla == 5 &&
      mouseX >= botonX && mouseX <= botonX + botonAncho &&
      mouseY >= botonY && mouseY <= botonY + botonAlto) {

    // Reiniciar todo:
    tiempoInicio = millis();
    pantalla = 1;
    textoX = -600;
    textoY = 500;
    textoX3 = 640;
    textoY4 = 0;
    opacidad5 = 0;
  }
}
