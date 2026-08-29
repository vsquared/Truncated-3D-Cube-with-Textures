// LT = left top : RT = right top : RB = right bottom : LB = left bottom

PImage imgOne;
PImage imgTwo;
PImage imgThree;
PImage imgFour;
PImage imgFive;
PImage imgSix;

int _wndW = 600;
int _wndH = 600;

float rotx = PI/4;
float roty = PI/4;

int s = 100;
int crop = s/3;

void cube(){
  // ============ 6 Faces =========== //
  textureMode(NORMAL);
 
  // Front face
  beginShape();
  texture(imgOne);
  vertex(-s, -s+crop, s, 0.0, 0.16);  // LT lower crop * -> Front LT Triangle
  vertex(-s+crop, -s, s, 0.16, 0.0);  // LT upper crop * -> Front LT Triangle
  vertex( s-crop, -s, s, 0.84, 0.0);  // RT upper crop * -> Front RT Triangle
  vertex( s, -s+crop, s, 1.0, 0.16);  // RT lower crop * -> Front RT Triangle
  vertex( s, s-crop,  s, 1.0, 0.84);  // RB upper crop * -> Front RB Triangle
  vertex( s-crop,  s, s, 0.84, 1.0);  // RB lower crop * -> Front RB Triangle
  vertex(-s+crop,  s, s, 0.16, 1.0);  // LB lower crop * -> Front LB Triangle
  vertex(-s, s-crop,  s, 0.0, 0.84);  // LB upper crop * -> Front LB Triangle
  endShape();
  
  // Back face
  beginShape();
  texture(imgSix);
  vertex( s, -s+crop, -s, 0.0, 0.16);  // LT lower crop * -> Back LT Triangle
  vertex( s-crop, -s, -s, 0.16, 0.0);  // LT upper crop * -> Back LT Triangle
  vertex(-s+crop, -s, -s, 0.84, 0.0);  // RT upper crop * -> Back RT Triangle
  vertex(-s, -s+crop, -s, 1.0, 0.16);  // RT lower crop * -> Back RT Triangle
  vertex(-s,  s-crop, -s, 1.0, 0.84);  // RB upper crop * -> Back RB Triangle
  vertex(-s+crop,  s, -s, 0.84, 1.0);  // RB lower crop * -> Back RB Triangle
  vertex( s-crop,  s, -s, 0.16, 1.0);  // LB lower crop * -> Back LB Triangle
  vertex( s,  s-crop, -s, 0.0, 0.84);  // LB upper crop * -> Back LB Triangle
  endShape();
  
  // Bottom face
  beginShape();
  texture(imgFour);
  vertex(-s,  s,  s-crop, 0.0, 0.16);  // LT lower crop
  vertex(-s+crop,  s,  s, 0.16, 0.0);  // LT upper crop
  vertex( s-crop,  s,  s, 0.84, 0.0);  // RT upper crop
  vertex( s,  s,  s-crop, 1.0, 0.16);  // RT lower crop
  vertex( s,  s, -s+crop, 1.0, 0.84);  // RB upper crop
  vertex( s-crop,  s, -s, 0.84, 1.0);  // RB lower crop
  vertex(-s+crop,  s, -s, 0.16, 1.0);  // LB lower crop
  vertex(-s,  s, -s+crop, 0.0, 0.84);  // LB upper crop
  endShape();
  
  // Top face
  beginShape();
  texture(imgThree);
  vertex(-s, -s, -s+crop, 0.0, 0.16);  // LT lower crop
  vertex(-s+crop, -s, -s, 0.16, 0.0);  // LT upper crop
  vertex( s-crop, -s, -s, 0.84, 0.0);  // RT upper crop
  vertex( s, -s, -s+crop, 1.0, 0.16);  // RT lower crop
  vertex( s, -s,  s-crop, 1.0, 0.84);  // RB upper crop
  vertex( s-crop, -s,  s, 0.84, 1.0);  // RB lower crop
  vertex(-s+crop, -s,  s, 0.16, 1.0);  // LB lower crop
  vertex(-s, -s,  s-crop, 0.0, 0.84);  // LB upper crop
  endShape();
  
  // Right face
  beginShape();
  texture(imgTwo);
  vertex( s, -s+crop,  s, 0.0, 0.16);  // LT lower crop
  vertex( s, -s,  s-crop, 0.16, 0.0);  // LT upper crop * -> Front RT Triangle
  vertex( s, -s, -s+crop, 0.84, 0.0);  // RT upper crop * -> Back LT Triangle
  vertex( s, -s+crop, -s, 1.0, 0.16);  // RT lower crop
  vertex( s,  s-crop, -s, 1.0, 0.84);  // RB upper crop
  vertex( s,  s, -s+crop, 0.84, 1.0);  // RB lower crop * -> Back LB Triangle
  vertex( s,  s,  s-crop, 0.16, 1.0);  // LB lower crop * -> Front RB Triangle
  vertex( s,  s-crop,  s, 0.0, 0.84);  // LB upper crop
  endShape();
  
  // Left face
  beginShape();
  texture(imgFive);
  vertex(-s, -s+crop, -s, 0.0, 0.16);  // LT lower crop
  vertex(-s, -s, -s+crop, 0.16, 0.0);  // LT upper crop * -> Back RT Triangle
  vertex(-s, -s,  s-crop, 0.84, 0.0);  // RT upper crop * -> Front LT Triangle
  vertex(-s, -s+crop,  s, 1.0, 0.16);  // RT lower crop
  vertex(-s,  s-crop,  s, 1.0, 0.84);  // RB upper crop  
  vertex(-s,  s,  s-crop, 0.84, 1.0);  // RB lower crop * -> Front LB Triangle
  vertex(-s,  s, -s+crop, 0.16, 1.0);  // LB lower crop * -> Back RB Triangle
  vertex(-s,  s-crop, -s, 0.0, 0.84);  // LB upper crop
  endShape();
  
  // ========== 8 Triangles =========== //
  beginShape();    // Front face LT triangle
  fill(0); 
  vertex(-s, -s+crop, s);  // Front LT lower crop * -> LT Triangle
  vertex(-s+crop, -s, s);  // Front LT upper crop * -> LT Triangle
  vertex(-s, -s,  s-crop); // Left RT upper crop * -> LT Triangle
  endShape();
  
  beginShape();    // Front face RT triangle
  fill(0); 
  vertex( s-crop, -s, s);  // Front RT upper crop * -> RT Triangle
  vertex( s, -s+crop, s);  // Front RT lower crop * -> RT Triangle
  vertex( s, -s,  s-crop); // Right LT upper crop * -> RT Triangle
  endShape();
  
  beginShape();    // Front face RB triangle
  fill(0);  
  vertex( s, s-crop, s);   // Front RB upper crop * -> RB Triangle
  vertex( s-crop, s, s);   // Front RB lower crop * -> RB Triangle
  vertex( s, s, s-crop);   // Right LB lower crop * -> RB Triangle 
  endShape();
  
  beginShape();    // Front face LB triangle
  fill(0); 
  vertex(-s+crop,  s, s);  // Front LB lower crop * -> LB Triangle
  vertex(-s, s-crop, s);   // Front LB upper crop * -> LB Triangle
  vertex(-s, s, s-crop);   // Left RB lower crop * -> LB Triangle
  endShape();
  
  beginShape();    // Back face LT triangle
  fill(0);
  vertex( s, -s+crop, -s);  // Back LT lower crop * -> LT Triangle
  vertex( s-crop, -s, -s);  // Back LT upper crop * -> LT Triangle
  vertex( s, -s, -s+crop);  // Left RT upper crop * -> LT Triangle
  endShape();
  
  beginShape();    // Back face RT triangle
  fill(0);
  vertex(-s+crop, -s, -s);  // Back RT upper crop * -> RT Triangle
  vertex(-s, -s+crop, -s);  // Back RT lower crop * -> RT Triangle
  vertex(-s, -s, -s+crop);  // Right LT upper crop * -> RT Triangle
  endShape();
 
  beginShape();    // Back face RB triangle
  fill(0);
  vertex(-s, s-crop, -s);  // Back RB upper crop * -> RB Triangle
  vertex(-s+crop, s, -s);  // Back RB lower crop * -> RB Triangle
  vertex(-s, s, -s+crop);  // Left LB lower crop * -> RB Triangle  
  endShape();
  
  beginShape();    // Back face LB triangle
  fill(0);  
  vertex( s-crop, s, -s);  // Back LB lower crop * -> LB Triangle
  vertex( s, s-crop, -s);  // Back LB upper crop * -> LB Triangle
  vertex( s, s, -s+crop);  // Right RB lower crop * -> LB Triangle
  endShape();

}

void setup(){
  size( _wndW, _wndH, P3D );
  surface.setTitle("Truncated Cube");
  strokeWeight(4);
  imgOne = loadImage("one.png");
  imgTwo = loadImage("two.png");
  imgThree = loadImage("three.png");
  imgFour = loadImage("four.png");   
  imgFive = loadImage("five.png");
  imgSix = loadImage("six.png");
}

void draw(){
  background(128);
  translate(width/2.0, height/2.0, -100);
  rotateX(rotx);
  rotateY(roty);
  cube();
}

void mouseDragged() {
  float rate = 0.01;
  rotx += (pmouseY-mouseY) * rate;
  roty += (mouseX-pmouseX) * rate;
}
