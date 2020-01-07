boolean up, down, left, right,space;
float lx=1000,ly=-100,lz=1000,dx,dy,dz=1,tx,ty=1,tz;
PVector direction= new PVector(0,-2);
float headAngle=0;
PVector directionUp= new PVector(0,-2);
float headAngleUp=0;
int p=1;
int a=0, z=50;
PImage texture;

PImage map;

ArrayList<Bullet> bullets;
ArrayList<snow> snows;

float rotx=0, roty=0;
int bs=50;
void setup() {
  size(1000, 800, P3D);

bullets = new ArrayList <Bullet>();
snows = new ArrayList <snow>();


  texture=loadImage("texture.jpg");
  textureMode(NORMAL);
  map=loadImage("map.png");
}

void draw() {
  background (100);
     println("here"+lx);
  
  handleSnows();
  handleBullets();
  camera(lx,ly,lz,direction.x+lx,ly+0, direction.y+lz,    tz,ty,tz);
  direction.rotate(headAngle);
  println("lz"+lz);
    println("ly"+ly);
    directionUp= direction.copy();
    directionUp.rotate(PI/2);
    
    
  if (up){
    lz=lz+direction.y*2;
    lx=lx+direction.x*2;
  }
  if (down) {
    lz=lz-direction.y*2;
    lx=lx-direction.x*2;
  }
    if (left){
      lx=lx-directionUp.x*2;
      lz=lz-directionUp.y*2;
    }
  if (right){
      lx=lx+directionUp.x*2;
      lz=lz+directionUp.y*2;
  }
 // pushMatrix();


//headAngle=headAngle +0.01;


  //rotateY(roty);
  //rotateX(rotx);

  drawMap();


  drawGround();
int j=0;
while(j<=3){
snows.add(new snow());
j++;
}




  //popMatrix();
if(space){
   bullets.add(new Bullet(lx,ly,lz,direction.x,direction.y));
}


  //=================================================================
  pushMatrix();
  //int i=0 ;

  //while(i<=100){

  // texturedBox(texture,50, 50, 50, 50);
  //i++;

  //}
  popMatrix();
  //=================================================================
}

//=================================================================
void texturedBox(PImage tex, float size, float x, float y, float z) {
  beginShape(QUADS);
  noStroke();
  texture(tex);
  pushMatrix();
  translate (x, y, z);
  scale(size);



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
  popMatrix();
}
//=================================================================


void mouseDragged() {
  headAngle= -(pmouseX-mouseX) *  0.01;
  headAngleUp= -(pmouseX-mouseX) * -0.01;
  
 // rotx= rotx +(pmouseY-mouseY)*0.01;
 // roty= roty +(pmouseX-mouseX)*-0.01;
}
void mouseReleased(){
   headAngle= -(pmouseX-mouseX) * 0;
   headAngleUp= -(pmouseX-mouseX) * 0;
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



void keyPressed() {
  if (keyCode == UP) up = true;
  if (keyCode == DOWN) down = true;
  if (keyCode == LEFT) left = true;
  if (keyCode == RIGHT) right = true;
  if (key == ' ') space = true;
}
void keyReleased() {
  if (keyCode == UP) up = false;
  if (keyCode == DOWN) down = false;
  if (keyCode == LEFT) left = false;
  if (keyCode == RIGHT) right = false;
  if (keyCode == ' ') space = false;
}
