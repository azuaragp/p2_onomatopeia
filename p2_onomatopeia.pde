import processing.pdf.*;
boolean record;

void setup() {
  size(618, 893);
  textSize(10); 
  textAlign(CENTER, CENTER); 
  //Tamaño anterior (794, 1172)
  //Tamaño revista (568, 843)
}

void draw() {
  if (record) {
    beginRecord(PDF, "retition-####.pdf");
  }
  
  background(0);
  fill(#2bff00);
  translate(width / 2, height / 2); 
  
  column_uno();// Columna central
  column_dos();// Columna doble
  column_t(); // Columna izquierda
  column_tgrande();
  column_z(); // Columna derecha
  column_zgrande();
  
  ona("tzzz", 80, 5, 10);
  ona("t z z z", 210, 50, 6);
  
  saveFrame("png/onomatopeia-####.png");
  
  if (record) {
    endRecord();
  record = false;
  }
}  

void moussePessed (){
 record=true;
}

void column_dos() {
  float x = 0; 
  for (int y = -height / 2; y <= height / 2; y += 6) { // Espaciado 
    text("tzzz  tzzz", x, y);
  }
}
void column_uno() {
  float x = 0; 
  for (int y = -height / 2; y <= height / 2; y += 20) { // Espaciado 
    text("tzzz", x, y);
  }
}

void column_t() {
  float offset = -60; 
  float scaleVal = 80; // Magnitud de la onda
  float angleInc = radians(90) / 10; // Incremento del ángulo
  float angle = 0.0; // Ángulo para recibir valores de coseno
  for (int y = -height / 2; y <= height / 2; y += 5) {
    float x = offset + (cos(angle) * scaleVal); // Resta para ir hacia la izquierda
    text("t", x, y);
    angle += angleInc + frameCount * 0.0001; // Incrementar el ángulo
  }
}

void column_tgrande() {
  float offset = -150; 
  float scaleVal = 200; // Magnitud de la onda
  float angleInc = radians(100) / 10; // Incremento del ángulo
  float angle = 10; // Ángulo para recibir valores de coseno
  for (int y = -height / 2; y <= height / 2; y += 10) {
    float x = offset + (cos(angle) * scaleVal); // Resta para ir hacia la izquierda
    text("t", x, y);
    angle += angleInc + frameCount * 0.0005; // Incrementar el ángulo
  }
}

void column_z() {
  float offset = 60; // Desplazamiento a la derecha (50 píxeles desde el centro)
  float scaleVal = 80; // Magnitud de la onda
  float angleInc = radians(90) / 10; // Incremento del ángulo
  float angle = 0.0; // Ángulo para recibir valores de coseno
  for (int y = -height / 2; y <= height / 2; y += 5) {
    float x = offset + (-cos(angle) * scaleVal); // Resta para ir hacia la derecha
    text("z", x, y);
    angle += angleInc + frameCount * 0.0001; // Incrementar el ángulo
  }
}
void column_zgrande() {
  float offset = 150; 
  float scaleVal = 200; // Magnitud de la onda
  float angleInc = radians(100) / 10; // Incremento del ángulo
  float angle = 0.0; // Ángulo para recibir valores de coseno
  for (int y = -height / 2; y <= height / 2; y += 10) {
    float x = offset + (cos(angle) * scaleVal); // Resta para ir hacia la izquierda
    text("z", x, y);
    angle += angleInc + frameCount * 0.0005; // Incrementar el ángulo
  }
}

void ona(String txt, float sV, float aI, float r) {
  float offset = 0;
  float scaleVal = sV; // Magnitud de la onda
  float angleInc = radians(180) / aI; // Incremento del ángulo
  float angle = 0.0; // Ángulo para valores de coseno

  for (int y = -height / 2; y <= height / 2; y += r) {
    float x = offset + (cos(angle) * scaleVal); // Posición de texto en X
    text(txt, x, y);
    angle += angleInc + frameCount * 0.0006;
  }
}
