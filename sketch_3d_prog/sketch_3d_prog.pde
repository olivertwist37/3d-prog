int p=1;
PImage texture;
float rotx=PI/4, roty=PI/4;
void setup() {
  size(500, 500, P3D);

  texture=loadImage("texture.jpg");
  textureMode(NORMAL);
}

void draw() {

  background (150);
  fill(255);
  // rect(50,50,400,400);
  //=================================================================
  pushMatrix();
  noStroke();
  translate (width/2, height/2);
  rotateY(roty);
  rotateX(rotx);
  scale(100);
  texturedBox(texture);

  popMatrix();
  //=================================================================
  //   pushMatrix();

  //  translate (mouseX+30,mouseY,-50);
  //  fill(250,250,100,10);
  //sphere(30);


  //  popMatrix();
  //   pushMatrix();

  //  translate (mouseX-30,mouseY,-50);
  //  fill(250,250,100,10);
  //sphere(30);


  //  popMatrix();
  println(""+p);
  //   pushMatrix();
  //   rotateX(PI/p*2);
  //translate (mouseX,mouseY);
  // image(image,0,0,50,50);
  //popMatrix();
}

//=================================================================
void texturedBox(PImage tex) {
  beginShape(QUADS);

  texture(tex);
  //z+
  vertex(-1, -1, 1, 0, 0);
  vertex(1, -1, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(-1, 1, 1, 0, 1);
  //z-
  vertex(-1, -1, -1, 0, 0);
  vertex(1, -1, -1, 1, 0);
  vertex(1, 1, -1, 1, 1);
  vertex(-1, 1, -1, 0, 1);
  //top
  vertex(-1, -1, -1, 0, 0);
  vertex(1, -1, -1, 1, 0);
  vertex(1, -1, 1, 1, 1);
  vertex(-1, -1, 1, 0, 1);
  //bottem
  vertex(1, 1, 1, 0, 0);
  vertex(-1, 1, 1, 0, 1);
  vertex(-1, 1, -1, 1, 1);
  vertex(1, 1, -1, 1, 0);
  //left
  vertex(-1, -1, 1, 1, 1);
  vertex(-1, 1, 1, 0, 1);
  vertex(-1, 1, -1, 0, 0);
  vertex(-1, -1, -1, 1, 0);
//right
  vertex(1, -1, 1, 1, 1);
  vertex(1, 1, 1, 0, 1);
  vertex(1, 1, -1, 0, 0);
  vertex(1, -1, -1, 1, 0);
  endShape();
}
//=================================================================

void mousePressed() {
  p++;
}

void mouseDragged() {
  rotx= rotx +(pmouseY-mouseY)*0.01;
  roty= roty +(pmouseX-mouseX)*-0.01;
}
void grid() {

  //int i=0;
  //while(i<width){
  // line (0,i,height,i);
  // i=i+20;
  //}

  // int j=0;
  //while(j<height){
  // line (0,j,width,j);
  // j=j+20;
  //}
}
